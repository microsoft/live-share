#
# Copyright © Microsoft Corporation
# All rights reserved.
# Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
#
#!/usr/bin/env bash

echo "-----------------------------------------------------------------------------"
echo ""
echo "Visual Studio Live Share Linux Dependency Installer"
echo ""
echo "Visual Studio Live Share requires a number of pre-requisites that this script"
echo "will attempt to install them for you. Note you may be prompted for your admin"
echo "(sudo) password during the installation process."
echo ""
echo "See https://aka.ms/vsls-docs/linux-prerequisites for manual instructions."
echo ""
echo "-----------------------------------------------------------------------------"
echo ""
read -p "Contine [Y/n]? " yn
if [ "$yn" != "y" ] &&  [ "$yn" != "Y" ] && [ "$yn" != "" ] && [ "$yn" != "yes" ] && [ "$yn" != "Yes" ] && [ "$yn" != "YES" ]; then
    exit 2
fi  
echo ""

# Debian / Ubuntu
APT=$(which apt 2>&1)
if [ $? -eq 0 ]; then
    echo "(*) Detected Debian / Ubuntu"
    sudo $APT -yq install libunwind8 liblttng-ust0 libcurl3 libssl1.0.0 libuuid1 libkrb5-3 zlib1g gnome-keyring libsecret-1-0 desktop-file-utils gettext apt-transport-https
    if [ $? -ne 0 ]; then
        "(!) Installation failed!" 
        exit 1
    fi

    LIBICU=$(apt-cache search libicu | grep -o "libicu[0-9][0-9]\s")
    if [ $? -ne 0 ]; then
        "(!) Installation failed!" 
        exit 1
    fi
    echo "(i) libicu package is $LIBICU"
    sudo $APT -yq install $LIBICU
    if [ $? -ne 0 ]; then
        "(!) Installation failed!" 
        exit 1; 
    fi

    echo "(*) Done"
    echo ""
    exit 0
fi

#RHL/Fedora/CentOS
YUM=$(which yum 2>&1)
if [ $? -eq 0 ]; then
    echo "(*) Detected RHL / Fedora / CentOS"
    sudo $YUM -y install libunwind lttng-ust libcurl openssl-libs libuuid krb5-libs libicu zlib gnome-keyring libsecret desktop-file-utils    #Find libicu version
    if [ $? -ne 0 ]; then
        "(!) Installation failed!" 
        exit 1
    fi

    echo "(*) Done"
    echo ""
    exit 0
fi

#ArchLinux
PACMAN=$(which pacman 2>&1)
if [ $? -eq 0 ]; then
    echo "(*) Detected ArchLinux (unoffically/community supported)"
    sudo $PACMAN -Sq libunwind lttng-ust curl openssl libutil-linux krb5 icu zlib gettext desktop-file-utils gnome-keyring libsecret    
    if [ $? -ne 0 ]; then
        "(!) Installation failed!" 
        exit 1
    fi

    echo "(*) Done"
    echo ""
    exit 0
fi

echo "(!) We are unable to automatically install dependencies for this version of"
echo "    Linux. See https://aka.ms/vsls-docs/linux-prerequisites for information"
echo "    on required libraries."
echo ""
exit 1
