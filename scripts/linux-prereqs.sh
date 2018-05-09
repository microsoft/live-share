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

# Debian / Ubuntu
APT=$(which apt 2>&1)
if type apt > /dev/null 2>&1; then
    echo "(*) Detected Debian / Ubuntu"
    echo ""
    sudo apt install -yq libunwind8 liblttng-ust0 libcurl3 libssl1.0.? libicu?? libuuid1 libkrb5-3 zlib1g gnome-keyring libsecret-1-0 desktop-file-utils gettext apt-transport-https
    if [ $? -ne 0 ]; then
        echo "(!) Installation failed! Press enter to dismiss this message."
        read
        exit 1
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
    sudo pacman -Sq --needed grc libucru libunwind lttng-ust curl openssl-1.0 libutil-linux krb5 icu zlib gettext desktop-file-utils gnome-keyring libsecret
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
