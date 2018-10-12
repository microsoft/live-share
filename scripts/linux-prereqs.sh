#
# Copyright © Microsoft Corporation
# All rights reserved.
#
# Licensed under the MIT License. See LICENSE-CODE in the project root for details.
#
# Exit codes:
# 0 - Success
# 1 - Unexpected failure
# 3 - Do not have permissions to run command
# 4 - Distribution not supported by script
#
#!/usr/bin/env bash

cat << EOF

Visual Studio Live Share Linux Dependency Installer

See https://aka.ms/vsls-docs/linux-prerequisites for manual instructions.

Visual Studio Live Share requires a number of prerequisites that this script
will attempt to install for you. This process requires admin / root access.

EOF

# Script can skip installing .NET Core, keyring, or browser integretion dependencies.
# Pass false to the first argument to skip .NET Core, second to skip keyring, and 
# and third to skip browser integration dependency installation.
if [ "$1" = "false" ]; then NETCOREDEPS=0; else NETCOREDEPS=1; fi
if [ "$2" = "false" ]; then KEYRINGDEPS=0; else KEYRINGDEPS=1; fi
if [ "$3" = "false" ]; then BROWSERDEPS=0; else BROWSERDEPS=1; fi

# Utility function for exiting
exitscript()
{
    echo -e "\nPress enter to dismiss this message"
    read
    exit $1
}

# Wrapper function to only use sudo if not already root
sudoif()
{
    if [ $(id -u) -ne 0 ]; then
        set -- command sudo "$@"
    fi
    "$@"
}

# Utility function that waits for any existing installation operations to complete
# on Debian/Ubuntu based distributions and then calls apt-get
aptsudoif() 
{
    while sudoif fuser /var/lib/dpkg/lock >/dev/null 2>&1; do
        echo -ne "Waiting for other package operations to complete.\r"
        sleep 0.2
        echo -ne "Waiting for other package operations to complete..\r"
        sleep 0.2
        echo -ne "Waiting for other package operations to complete...\r"
        sleep 0.2
        echo -ne "\r\033[K"
    done
    sudoif apt-get "$@"
}

# If not already root, validate user has sudo access and error if not.
if [ $(id -u) -ne 0 ]; then

# Can't indent or text will be indented
cat << EOF
To begin the installation process, your OS will now ask you to enter your
admin / root (sudo) password.

EOF
    # Validate user actually can use sudo
    sudo -v > /dev/null 2>&1
    if [ $? -ne 0 ]; then

# Can't indent or text will be indented
cat << EOF
(!) Dependency installation failed! You do not have the needed admin / root
    access to install Live Share's dependencies. Contact your system admin
    and ask them to install the required libraries described here:
    https://aka.ms/vsls-docs/linux-required-lib-details
EOF
        exitscript 3
    else
        echo ""
    fi
fi

#openSUSE - Has to be first as apt is aliased to zypper
if type zypper > /dev/null 2>&1; then
    echo -e "(*) Detected SUSE (unoffically/community supported)\n"

    if [ $NETCOREDEPS -ne 0 ]; then
        # Install .NET Core dependencies
        sudoif zypper -n in libopenssl1_0_0 libicu krb5 libz1
        if [ $? -ne 0 ]; then
            echo "(!) .NET Core dependency install failed!"
            exitscript 1
        fi
    fi

    if [ $KEYRINGDEPS -ne 0 ]; then
        # Install keyring dependencies
        sudoif zypper -n in gnome-keyring libsecret-1-0
        if [ $? -ne 0 ]; then
            echo "(!) Keyring installation failed!"
            exitscript 1
        fi
    fi 

    if [ $BROWSERDEPS -ne 0 ]; then
        # Install browser integration and clipboard dependencies
        sudoif zypper -n in desktop-file-utils xprop
        if [ $? -ne 0 ]; then
            echo "(!) Browser dependency install failed!"
            exitscript 1
        fi
    fi


# Debian / Ubuntu
elif type apt-get > /dev/null 2>&1; then
    echo -e "(*) Detected Debian / Ubuntu\n"
   
    # Get latest package data
    aptsudoif update
    if [ $? -ne 0 ]; then
        echo "(!) Failed to re-index available packages!"
        exitscript 1
    fi

    if [ $NETCOREDEPS -ne 0 ]; then
        # Install .NET Core dependencies
        aptsudoif install -yq libicu[0-9][0-9] libkrb5-3 zlib1g
        if [ $? -ne 0 ]; then
            echo "(!) .NET Core dependency install failed!"
            exitscript 1
        fi
        # Determine which version of libssl to install
        LIBSSL=$(dpkg-query -f '${db:Status-Abbrev}\t${binary:Package}\n' -W 'libssl1\.0\.?' 2>&1 | sed -n -e '/^i/p' | grep -o 'libssl1\.0\.[0-9]:' | uniq | sort)
        if [ $? -ne 0 ]; then
            echo "(!) Failed see if libssl already installed!"
            exitscript 1
        fi
        if [[ -z $LIBSSL ]]; then 
            # No libssl install 1.0.2 for Debian, 1.0.0 for Ubuntu
            if [[ ! -z $(apt-cache --names-only search ^libssl1.0.2$) ]]; then
                aptsudoif install -yq libssl1.0.2
                if [ $? -ne 0 ]; then
                    echo "(!) libssl1.0.2 installation failed!"
                    exitscript 1
                fi
            else    
                aptsudoif install -yq libssl1.0.0
                if [ $? -ne 0 ]; then
                    echo "(!) libssl1.0.0 installation failed!"
                    exitscript 1
                fi
            fi
        else 
            echo "libssl1.0.x already installed."
        fi
    fi

    if [ $KEYRINGDEPS -ne 0 ]; then
        # Install keyring dependencies
        aptsudoif install -yq gnome-keyring libsecret-1-0
        if [ $? -ne 0 ]; then
            echo "(!) Keyring installation failed!"
            exitscript 1
        fi
    fi 

    if [ $BROWSERDEPS -ne 0 ]; then
        # Install browser integration dependencies
        aptsudoif install -yq desktop-file-utils x11-utils
        if [ $? -ne 0 ]; then
            echo "(!) Browser dependency install failed!"
            exitscript 1
        fi
    fi

#RHL/Fedora/CentOS
elif type yum  > /dev/null 2>&1; then
    echo -e "(*) Detected RHL / Fedora / CentOS\n"

    # Update package repo indexes
    sudoif yum check-update

    if [ $NETCOREDEPS -ne 0 ]; then
        # Install .NET Core dependencies
        sudoif yum -y install openssl-libs krb5-libs libicu zlib
        if [ $? -ne 0 ]; then
            echo "(!) .NET Core dependency install failed!"
            exitscript 1
        fi
    fi

    if [ $KEYRINGDEPS -ne 0 ]; then
        # Install keyring dependencies
        sudoif yum -y install gnome-keyring libsecret
        if [ $? -ne 0 ]; then
            echo "(!) Keyring installation failed!"
            exitscript 1
        fi
    fi

    if [ $BROWSERDEPS -ne 0 ]; then
        # Install browser integration dependencies
        sudoif yum -y install desktop-file-utils xorg-x11-utils
        if [ $? -ne 0 ]; then
            echo "(!) Browser dependency install failed!"
            exitscript 1
        fi
    fi

#ArchLinux
elif type pacman > /dev/null 2>&1; then
    echo -e "(*) Detected Arch Linux (unoffically/community supported)\n"

    if [ $NETCOREDEPS -ne 0 ]; then
        # Install .NET Core dependencies
        sudoif pacman -Sq --noconfirm --needed gcr liburcu openssl-1.0 krb5 icu zlib
        if [ $? -ne 0 ]; then
            echo "(!) .NET Core dependency install failed!"
            exitscript 1
        fi
    fi

    if [ $KEYRINGDEPS -ne 0 ]; then
        # Install keyring dependencies
        sudoif pacman -Sq --noconfirm --needed gnome-keyring libsecret
        if [ $? -ne 0 ]; then
            echo "(!) Keyring installation failed!"
            exitscript 1
        fi
    fi

    if [ $BROWSERDEPS -ne 0 ]; then
        # Install browser integration dependencies
        sudoif pacman -Sq --noconfirm --needed desktop-file-utils xorg-xprop
        if [ $? -ne 0 ]; then
            echo "(!) Browser dependency install failed!"
            exitscript 1
        fi
    fi

#Solus
elif type eopkg > /dev/null 2>&1; then
    echo -e "(*) Detected Solus (unoffically/community supported)\n"

    if [ $NETCOREDEPS -ne 0 ]; then
        # Install .NET Core dependencies
        sudoif eopkg -y it libicu openssl zlib kerberos
        if [ $? -ne 0 ]; then
            echo "(!) .NET Core dependency install failed!"
            exitscript 1
        fi
    fi

    if [ $KEYRINGDEPS -ne 0 ]; then
        # Install keyring dependencies
        sudoif eopkg -y it gnome-keyring libsecret
        if [ $? -ne 0 ]; then
            echo "(!) Keyring installation failed!"
            exitscript 1
        fi
    fi

    if [ $BROWSERDEPS -ne 0 ]; then
        # Install browser integration dependencies
        sudoif eopkg -y it desktop-file-utils xprop
        if [ $? -ne 0 ]; then
            echo "(!) Browser dependency install failed!"
            exitscript 1
        fi
    fi

#Alpine Linux
elif type apk > /dev/null 2>&1; then
    echo -e "(*) Detected Alpine Linux\n"

    # Update package repo indexes
    sudoif apk update --wait 30
    if [ $? -ne 0 ]; then
        echo "(!) Failed to update package index."
        exitscript 1
    fi

   # Upgrade to avoid package conflicts
    sudoif apk upgrade 
    if [ $? -ne 0 ]; then
        echo "(!) Failed to upgrade."
        exitscript 1
    fi

    if [ $NETCOREDEPS -ne 0 ]; then
        # Install .NET Core dependencies
        sudoif apk add --no-cache libssl1.0 icu krb5 zlib
        if [ $? -ne 0 ]; then
            echo "(!) .NET Core dependency install failed!"
            exitscript 1
        fi
    fi

    if [ $KEYRINGDEPS -ne 0 ]; then
        # Install keyring dependencies
        sudoif apk add --no-cache gnome-keyring libsecret
        if [ $? -ne 0 ]; then
            echo "(!) Keyring installation failed!"
            exitscript 1
        fi
    fi

    if [ $BROWSERDEPS -ne 0 ]; then
        # Install browser integration dependencies
        sudoif apk add --no-cache desktop-file-utils xprop
        if [ $? -ne 0 ]; then
            echo "(!) Browser dependency install failed!"
            exitscript 1
        fi
    fi


#If no supported package manager is found
else

# Can't indent or text will be indented
cat << EOF
(!) We are unable to automatically install dependencies for this version of"
    Linux. See https://aka.ms/vsls-docs/linux-prerequisites for information"
    on required libraries."
EOF

    exitscript 4
fi

cat << EOF

(*) Success!

EOF
# Don't pause on exit here - we'll handle this in the extension
