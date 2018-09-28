#
# Copyright © Microsoft Corporation
# All rights reserved.
#
# Licensed under the MIT License. See LICENSE-CODE in the project root for details.
#
#!/usr/bin/env bash

echo ""
echo "Visual Studio Live Share Linux Dependency Installer"
echo ""
echo "See https://aka.ms/vsls-docs/linux-prerequisites for manual instructions."
echo ""
echo "Visual Studio Live Share requires a number of prerequisites that this script"
echo "will attempt to install for you. Note you may be prompted for your admin (sudo)"
echo "password during the installation process."
echo ""

# Script can skip installing .NET Core, keyring, or browser integretion dependencies.
# Pass false to the first argument to skip .NET Core, second to skip keyring, and 
# and third to skip browser integration dependency installation.
if [ "$1" = "false" ]; then NETCOREDEPS=0; else NETCOREDEPS=1; fi
if [ "$2" = "false" ]; then KEYRINGDEPS=0; else KEYRINGDEPS=1; fi
if [ "$3" = "false" ]; then BROWSERDEPS=0; else BROWSERDEPS=1; fi

# Wrapper function to only use sudo if not already root
sudoif()
{
    if [ $EUID -ne 0 ]; then
        set -- command sudo "$@"
    fi
    "$@"
}

#openSUSE - Has to be first as apt is aliased to zypper
if type zypper > /dev/null 2>&1; then
    echo "(*) Detected SUSE (unoffically/community supported)"
    echo ""

    if [ $NETCOREDEPS -ne 0 ]; then
        # Install .NET Core dependencies
        sudoif zypper -n in libopenssl1_0_0 libicu krb5 libz1
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi

    if [ $KEYRINGDEPS -ne 0 ]; then
        # Install keyring dependencies
        sudoif zypper -n in gnome-keyring libsecret-1-0
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi

    if [ $BROWSERDEPS -ne 0 ]; then
        # Install browser integration and clipboard dependencies
        sudoif zypper -n in desktop-file-utils xprop
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi


# Debian / Ubuntu
elif type apt-get > /dev/null 2>&1; then
    echo "(*) Detected Debian / Ubuntu"
    echo ""

    while sudoif fuser /var/lib/dpkg/lock >/dev/null 2>&1; do
        echo "Waiting for other package operations to complete..."
        sleep 2
    done

    # Get latest package data
    sudoif apt-get update
    if [ $? -ne 0 ]; then
        echo "(!) Installation failed! Press enter to dismiss this message."
        read
        exit 1
    fi

    if [ $NETCOREDEPS -ne 0 ]; then
        # Install .NET Core dependencies
        sudoif apt-get install -yq libicu[0-9][0-9] libkrb5-3 zlib1g
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
        # On Debian, .NET Core will crash if there is more than one version of libssl1.0 installed.
        # Remove one if this situation is detected. See https://github.com/dotnet/core/issues/973
        LIBSSL=$(dpkg-query -f '${db:Status-Abbrev}\t${binary:Package}\n' -W 'libssl1\.0\.?' 2>&1 | sed -n -e '/^i/p' | grep -o 'libssl1\.0\.[0-9]:' | uniq | sort)
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
        if [[ -z $LIBSSL ]]; then 
            # No libssl install 1.0.2 for Debian, 1.0.0 for Ubuntu
            if [[ ! -z $(apt-cache --names-only search ^libssl1.0.2$) ]]; then
                sudoif apt-get install -yq libssl1.0.2
                if [ $? -ne 0 ]; then
                    echo "(!) Installation failed! Press enter to dismiss this message."
                    read
                    exit 1
                fi
            else    
                sudoif apt-get install -yq libssl1.0.0
                if [ $? -ne 0 ]; then
                    echo "(!) Installation failed! Press enter to dismiss this message."
                    read
                    exit 1
                fi
            fi
        else 
            LIBSSLCOUNT=$(echo "$LIBSSL" | wc -l)
            LIBSSLFIRSTPKG=$(echo "$LIBSSL" | head -n 1 | sed -e 's/...\t\(.*\):\(.*\)/\1/')
            if [[ $LIBSSLCOUNT -gt 1 ]]; then
                # More than one is installed - so see if we should remove one
                echo ""
                echo "(!) WARNING: $LIBSSLCOUNT sub-versions of libssl1.0 detected. This can crash Live Share."
                echo ""
                echo "This script can attempt to fix this by removing the package \"$LIBSSLFIRSTPKG\"".
                echo "However, doing so MAY REMOVE OTHER PACKAGES ON YOUR SYSTEM. If you proceed, you"
                echo "will presented with a complete list of libraries that will added and be removed."
                echo "Please verify you want this list of packages removed and cancel if not."
                echo ""
                read -p "Attempt to fix by removing the library [Y/n]? "
                if [[ "$REPLY" == "" ]] || [[ "$REPLY"  =~ ^[Yy] ]]; then
                    # This can remove other packages, so skip "-yq" so user can review impact
                    echo ""
                    sudoif apt-get remove $LIBSSLFIRSTPKG
                    if [ $? -ne 0 ]; then
                        echo "(!) Installation failed! Press enter to dismiss this message."
                        read
                        exit 1
                    fi
                fi
            else
                echo "$LIBSSLFIRSTPKG already installed."
            fi
        fi
    fi

    if [ $KEYRINGDEPS -ne 0 ]; then
        # Install keyring dependencies
        sudoif apt-get install -yq gnome-keyring libsecret-1-0
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi 

    if [ $BROWSERDEPS -ne 0 ]; then
        # Install browser integration dependencies
        sudoif apt-get install -yq desktop-file-utils x11-utils
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi

#RHL/Fedora/CentOS
elif type yum  > /dev/null 2>&1; then
    echo "(*) Detected RHL / Fedora / CentOS"
    echo ""

    if [ $NETCOREDEPS -ne 0 ]; then
        # Install .NET Core dependencies
        sudoif yum -y install openssl-libs krb5-libs libicu zlib
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi

    if [ $KEYRINGDEPS -ne 0 ]; then
        # Install keyring dependencies
        sudoif yum -y install gnome-keyring libsecret
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi

    if [ $BROWSERDEPS -ne 0 ]; then
        # Install browser integration dependencies
        sudoif yum -y install desktop-file-utils xorg-x11-utils
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi

#ArchLinux
elif type pacman > /dev/null 2>&1; then
    echo "(*) Detected ArchLinux (unoffically/community supported)"
    echo ""

    if [ $NETCOREDEPS -ne 0 ]; then
        # Install .NET Core dependencies
        sudoif pacman -Sq --needed gcr liburcu openssl-1.0 krb5 icu zlib
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi

    if [ $KEYRINGDEPS -ne 0 ]; then
        # Install keyring dependencies
        sudoif pacman -Sq --needed gnome-keyring libsecret
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi

    if [ $BROWSERDEPS -ne 0 ]; then
        # Install browser integration dependencies
        sudoif pacman -Sq --needed desktop-file-utils xorg-xprop
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi

#Solus
elif type eopkg > /dev/null 2>&1; then
    echo "(*) Detected Solus (unoffically/community supported)"
    echo ""

    if [ $NETCOREDEPS -ne 0 ]; then
        # Install .NET Core dependencies
        sudoif eopkg -y it libicu openssl zlib kerberos
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi

    if [ $KEYRINGDEPS -ne 0 ]; then
        # Install keyring dependencies
        sudoif eopkg -y it gnome-keyring libsecret
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi

    if [ $BROWSERDEPS -ne 0 ]; then
        # Install browser integration dependencies
        sudoif eopkg -y it desktop-file-utils xprop
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    fi


#If no supported package manager is found
else
    echo "(!) We are unable to automatically install dependencies for this version of"
    echo "    Linux. See https://aka.ms/vsls-docs/linux-prerequisites for information"
    echo "    on required libraries."
    echo ""
    echo "Press enter to dismiss this message."
    read
    exit 1
fi

echo ""
echo "(*) Success!"
echo ""
echo "** PLEASE RESTART VISUAL STUDIO CODE **"
echo ""
echo "Press enter to dismiss this message."
read
