#
# Copyright © Microsoft Corporation
# All rights reserved.
# 
# Licensed under the MIT License. See LICENSE-CODE in the project root for details.
#
#!/usr/bin/env bash

echo "-------------------------------------------------------------------------------"
echo ""
echo "Visual Studio Live Share Linux Dependency Installer"
echo ""
echo "Visual Studio Live Share requires a number of pre-requisites that this script"
echo "will attempt to install for you. Note you may be prompted for your admin (sudo)"
echo "password during the installation process."
echo ""
echo "See https://aka.ms/vsls-docs/linux-prerequisites for manual instructions."
echo ""
echo "-------------------------------------------------------------------------------"
echo ""
read -p "Continue [Y/n]? "
if ! [[ "$REPLY"  =~ ^[Yy] ]]; then    
    exit 2
fi  
echo ""

# Debian / Ubuntu
APT=$(which apt 2>&1)
if type apt > /dev/null 2>&1; then
    echo "(*) Detected Debian / Ubuntu"
    sudo apt -yq install libunwind8 liblttng-ust0 libcurl3 libssl1.0.0 libuuid1 libkrb5-3 zlib1g gnome-keyring libsecret-1-0 desktop-file-utils gettext apt-transport-https
    if [ $? -ne 0 ]; then
        echo "(!) Installation failed!" 
        exit 1
    fi

    LIBICU=$(apt-cache search libicu | grep -o "libicu[0-9][0-9]\s")
    if [ $? -ne 0 ]; then
        echo "(!) Installation failed!" 
        exit 1
    fi
    echo "(i) libicu package is $LIBICU"
    sudo apt -yq install $LIBICU
    if [ $? -ne 0 ]; then
        echo "(!) Installation failed!" 
        exit 1; 
    fi

#RHL/Fedora/CentOS
elif type yum  > /dev/null 2>&1; then
    echo "(*) Detected RHL / Fedora / CentOS"
    sudo yum -y install libunwind lttng-ust libcurl openssl-libs libuuid krb5-libs libicu zlib gnome-keyring libsecret desktop-file-utils    #Find libicu version
    if [ $? -ne 0 ]; then
        echo "(!) Installation failed!" 
        exit 1
    fi

#ArchLinux
elif type pacman > /dev/null 2>&1; then
    echo "(*) Detected ArchLinux (unoffically/community supported)"
    sudo pacman -Sq libunwind lttng-ust curl openssl libutil-linux krb5 icu zlib gettext desktop-file-utils gnome-keyring libsecret    
    if [ $? -ne 0 ]; then
        echo "(!) Installation failed!" 
        exit 1
    fi
#If the package manager is not supported
else 
    echo "(!) We are unable to automatically install dependencies for this version of"
    echo "    Linux. See https://aka.ms/vsls-docs/linux-prerequisites for information"
    echo "    on required libraries."
    exit 1
fi

echo "(*) Done"
echo ""
