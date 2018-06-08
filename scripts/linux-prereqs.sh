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

#openSUSE - Has to be first as apt is aliased to zypper
if type zypper > /dev/null 2>&1; then
    echo "(*) Detected SUSE (unoffically/community supported)"
    echo ""
    sudo zypper -n in libunwind libcurl[0-9] libopenssl1_0_0 liblttng-ust0 libicu libuuid1 krb5 libz1 gettext gnome-keyring libsecret-1-0 desktop-file-utils xprop
    if [ $? -ne 0 ]; then
        echo "(!) Installation failed! Press enter to dismiss this message."
        read
        exit 1
    fi

# Debian / Ubuntu
elif type apt > /dev/null 2>&1; then
    echo "(*) Detected Debian / Ubuntu"
    echo ""
    sudo apt install -yq libunwind8 liblttng-ust0 libcurl? libicu?? libuuid1 libkrb5-3 zlib1g gnome-keyring libsecret-1-0 desktop-file-utils gettext apt-transport-https
    if [ $? -ne 0 ]; then
        echo "(!) Installation failed! Press enter to dismiss this message."
        read
        exit 1
    fi
    # On Debian, .NET Core will crash if there is more than one version of libssl1.0 installed.
    # Remove one if this situation is detected. See https://github.com/dotnet/core/issues/973
    LIBSSL=$(dpkg-query -f '${db:Status-Abbrev}\t${binary:Package}\n' -W libssl1.0.? 2>&1 | sed -n -e '/^i/p')
    if [ $? -ne 0 ]; then
        echo "(!) Installation failed! Press enter to dismiss this message."
        read
        exit 1
    fi
    if [[ -z $LIBSSL ]]; then 
        # No libssl installed - so install one
        sudo apt install -yq libssl1.0.?
        if [ $? -ne 0 ]; then
            echo "(!) Installation failed! Press enter to dismiss this message."
            read
            exit 1
        fi
    else 
        LIBSSLCOUNT=$(echo "$LIBSSL" | wc -l)
        LIBSSLFIRSTPKG=$(echo "$LIBSSL" | head -n 1 | sed -e 's/...\t\(.*\):\(.*\)/\1/')
        if [[ $LIBSSLCOUNT -gt 1 ]]; then
            # More than one is installed - so see if we should remove one
            echo ""
            echo "(!) WARNING: $LIBSSLCOUNT sub-versions of libssl1.0 detected. This can crash Live Share."
            echo ""
            read -p "Attempt to fix by removing $LIBSSLFIRSTPKG [Y/n]? "
            if [[ "$REPLY" == "" ]] || [[ "$REPLY"  =~ ^[Yy] ]]; then
                # This can remove other packages, so skip "-yq" so user can review impact
                echo ""
                sudo apt remove $LIBSSLFIRSTPKG
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

#RHL/Fedora/CentOS
elif type yum  > /dev/null 2>&1; then
    echo "(*) Detected RHL / Fedora / CentOS"
    echo ""
    sudo yum -y install libunwind lttng-ust libcurl openssl-libs libuuid krb5-libs libicu zlib gnome-keyring libsecret desktop-file-utils
    if [ $? -ne 0 ]; then
        echo "(!) Installation failed! Press enter to dismiss this message."
        read
        exit 1
    fi

#ArchLinux
elif type pacman > /dev/null 2>&1; then
    echo "(*) Detected ArchLinux (unoffically/community supported)"
    echo ""
    sudo pacman -Sq --needed gcr liburcu libunwind lttng-ust curl openssl-1.0 libutil-linux krb5 icu zlib gettext desktop-file-utils gnome-keyring libsecret
    if [ $? -ne 0 ]; then
        echo "(!) Installation failed! Press enter to dismiss this message."
        read
        exit 1
    fi

#Solus
elif type eopkg > /dev/null 2>&1; then
    echo "(*) Detected Solus (unoffically/community supported)"
    echo ""
    sudo eopkg -y it libunwind liblttng-ust libicu curl openssl zlib gnome-keyring libsecret gettext desktop-file-utils xprop
    if [ $? -ne 0 ]; then
        echo "(!) Installation failed! Press enter to dismiss this message."
        read
        exit 1
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
