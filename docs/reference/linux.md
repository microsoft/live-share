---
title: "Linux installation details -  Visual Studio Live Share | Microsoft Docs"
description: "Detailed information on installing Visual Studio Live Share on Linux."
ms.custom:
ms.date: 10/6/2018
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "liveshare"
ms.topic: "reference"
author: "chuxel"
ms.author: "clantz"
manager: "AmandaSilver"
ms.workload: 
  - "liveshare"
---

<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Linux installation details

Linux is a highly variable environment and with the sheer number of desktop environments and distributions can be complicated to get working. If you stick to supported versions of **Ubuntu Desktop** (16.04+), **CentOS 7**, or **Fedora Workstation** (27+) and only use **official distributions of VS Code**, you should find the process straight forward. However, in the event that you are using a non-standard configuration or downstream distribution, you may or may not run into some hiccups. This document provides some information on requirements and some troubleshooting details that might help you get up and running even if you configuration is only community supported. Note that Live Share only supports **64-bit Linux**.

## Install Linux prerequisites

Some distributions of Linux are missing libraries Live Share needs to function. By default, Live Share attempts to detect and install Linux prerequisites for you. You'll see a toast notification when Live Share encounters a problem that can originate from missing libraries asking you for permission to install them.

![Toast notification showing message that Linux pre-requisites are missing](../media/vscode-linux-prereq-missing.png)

When you click "Install", a terminal window will appear where you'll need to enter your admin (sudo) password to continue. Assuming it completes successfully, restart Visual Studio Code you should be all set! You may also want to check out **[tips by distribution](#tips-by-distribution)** for other hints and workarounds if any exist.

If you see a message indicating the script does not support your distribution, see **[tips for community supported distributions](#tips-for-unsupported-distros)** for information the community has shared with us.

If you **prefer not to have VS Code run the command for you**, you can also opt to re-run the very latest version of this script at any time manually by running the following command from a Terminal window:

    wget -O ~/vsls-reqs https://aka.ms/vsls-linux-prereq-script && chmod +x ~/vsls-reqs && ~/vsls-reqs

## Tips by distribution

While the prerequisite install script above should cover Debian / Ubuntu and RHL / Fedora / CentOS, you may be wondering what is typically missing from vanilla installations of related distributions. The following list shows the key libraries that were missing in a fresh install of the distribution. The list also provides some tips that can help you get up and running if you hit a problem.

| Distribution | Vanilla install missing libraries | Additional steps |
|--------|-------------------|----|
| Ubuntu Desktop 18.04 (64-bit) | &lt;none&gt;  | &lt;none&gt; |
| Ubuntu Desktop 16.04 (64-bit) | &lt;none&gt; | &lt;none&gt; |
| Kubuntu 18.04 (64-bit) | `gnome-keyring desktop-file-utils` | <ul><li>If you run into trouble with Live Share's browser integration, be sure `desktop-file-utils` is installed and then restart VS Code.</li></ul> |
| Kubuntu 16.04 (64-bit) | `gnome-keyring desktop-file-utils` | <ul><li>If you run into trouble with Live Share's browser integration, be sure `desktop-file-utils` is installed and then restart VS Code.</li></ul> |
| Xubuntu 18.04 (64-bit) |&lt;none&gt;  | <ul><li>Ensure "Launch GNOME services on startup" is checked in the "Advanced" tab of "Session and Startup".</li><li>If you run into sign-in trouble, install `seahorse`, start "Passwords and Keys", verify you have "Login" keyring and that you can unlock it.</li></ul> |
| Xubuntu 16.04 (64-bit) | &lt;none&gt; | <ul><li>Ensure "Launch GNOME services on startup" is checked in the "Advanced" tab of "Session and Startup".</li><li>If you run into sign-in trouble, install `seahorse`, start "Passwords and Keys", verify you have "Login" keyring and that you can unlock it.</li></ul> |
| Mint 19 Cinnamon (64-bit) | &lt;none&gt;  | &lt;none&gt; |
| Mint 18.3 Cinnamon (64-bit) | &lt;none&gt;  | &lt;none&gt; |
| Debian 9 GNOME Desktop (64-bit) | &lt;none&gt; | <ul><li>You will need to install `sudo` and add your user to the sudo group.</li><li>Be sure you do **not** have both **libssl1.0.0 and libssl1.0.2** installed. Use `sudo apt remove libssl1.0.0` to remove the older version if it is installed in addition to 1.0.2. See [here](https://github.com/dotnet/core/issues/973) for details.</ul>  |
| Fedora Workstation 28 (64-bit) | &lt;none&gt; | &lt;none&gt; |
| Fedora Workstation 27 (64-bit) | &lt;none&gt; | &lt;none&gt; |
| CentOS 7 GNOME Desktop (64-bit) | &lt;none&gt; | &lt;none&gt; |

See **[tips for community supported distributions](#tips-for-community-supported-distros)** for information about whether certain non-Debian / Ubuntu or RHL based distributions are working or not.

Note that the Linux ecosystem moves quickly and package names will be different in certain distributions, so your results may vary. Additional details can be found [below](#detailed-library-requirements) on the libraries Live Share needs.

## Tips for community supported distros
<a name="tips-for-unsupported-distros"></a>

Distributions outside of the Debian / Ubuntu or RHL trees are not officially supported by Visual Studio Code or .NET Core. Therefore, by extension, they are not officially supported by Visual Studio Live Share either. However, the community has contributed some useful information about getting Live Share up and running on a number of additional distributions.

> **PRs welcome:** If you're interested in updating this information with your favorite distribution, submit a PR for [this file](https://github.com/MicrosoftDocs/live-share/tree/master/docs/reference/linux.md) in our docs GitHub repo. Even better, if you'd like to get the dependency installer supporting your favorite distribution, you can submit a PR [for this file](https://github.com/MicrosoftDocs/live-share/blob/master/scripts/linux-prereqs.sh).

| Distribution | Working? | Vanilla install missing libraries | Additional Steps |
|--------------|----------|-------------------|------------------|
| ArchLinux (64-bit) | Yes | Varies. Use the prerequisite install script. Possible libraries: `gcr liburcu openssl-1.0 krb5 zlib icu gnome-keyring libsecret desktop-file-utils xprop` | <ul><li>Use the prerequisite install script.</li><li>Use the [visual-studio-code-bin](https://aur.archlinux.org/packages/visual-studio-code-bin) AUR package for VS Code.</li><li>`sudo` will need to be installed  to use the automated prerequisite install script.</li><li>`gnome-keyring` may require additional [setup steps](https://wiki.archlinux.org/index.php/GNOME/Keyring) in some desktop environments.</lu><li>If you have custom compiled curl or libcurl, be sure to include Kerberos support (the default package includes it). See [here](https://github.com/MicrosoftDocs/live-share/issues/212) for details.</li></ul> |
| Manjaro 17.1 (64-bit) | Yes | `xorg-xprop liburcu` | <ul><li>Use the prerequisite install script.</li><li>Use the [visual-studio-code-bin](https://aur.archlinux.org/packages/visual-studio-code-bin) AUR package for VS Code.</li><li>If you have custom compiled curl or libcurl, be sure to include Kerberos support (the default package includes it). See [here](https://github.com/MicrosoftDocs/live-share/issues/212) for details.</li></ul> |
| openSuSE LEAP 15 KDE (64-bit) | Yes | `libopenssl1_0_0 gnome-keyring` | <ul><li>Use the prerequisite install script.</li></ul> |
| Solus 3 (64-bit) | Yes | `xprop`. The `vscode` package also needs to be on at least version 57. | <ul><li>Use the prerequisite install script.</li><li>Versions of the `vscode` package prior to release 57 were missing required product.json ([see below](#vs-code-oss-issues)).</li></ul> |
| Gentoo (64-bit) | Yes | Highly variable. Possible missing packages: `dev-libs/openssl-1.0.2 net-libs/libgsasl dev-libs/icu sys-libs/zlib sys-apps/util-linux app-crypt/libsecret gnome-base/gnome-keyring x11-apps/xprop`| <ul><li>The `visual-studio-code` package in the **jorgicio** overlay is known to work.</li></ul>

## Install prerequisites manually

 While we recommend using Live Share's **dependency install script**, this section provides further details on library requirements in the event you want perform these steps yourself or are using a distribution not supported by the script.

Typical missing libraries in vanilla installations can be found in the [tips by distribution](#tips-by-distribution) and [tips for community supported distributions](#tips-for-unsupported-distros) sections.

### Detailed library requirements

Visual Studio Live Share's native library requirements come from its use of .NET Core 2.1, libsecret to persist credentials, and its browser integration. The following table summarizes these requirements for distributions officially supported by .NET Core.

| Distribution | .NET Core Reqs | Credential Storage  Reqs| Browser Integration Reqs |
|--------------|-----------|--------------------|------------|
| Ubuntu and downstream distributions | `libssl1.0.0 libkrb5-3 zlib1g libicu55` (for Ubuntu 16.04, Mint 18.3) or `libicu57` (for Ubuntu 17.10) or `libicu60 `(for Ubuntu 18.04, Mint 19) | `libsecret-1-0 gnome-keyring` (or libsecret supported keyring - Kwallet does not support libsecret) | `desktop-file-utils x11-utils` |
| Debian 9 and downstream distributions | `libssl1.0.2 libkrb5-3 zlib1g libicu57` | `libsecret-1-0 gnome-keyring` (or libsecret supported keyring - Kwallet does not support libsecret) | `desktop-file-utils x11-utils` |
| RHL / CentOS/ Fedora | `openssl-libs krb5-libs zlib libicu` | `libsecret gnome-keyring` (or libsecret supported keyring - Kwallet does not support libsecret) | `desktop-file-utils xorg-x11-utils` |
| Alpine Linux | `openssl1.0 icu krb5 zlib` | `libsecret gnome-keyring` (or libsecret supported keyring - Kwallet does not support libsecret) | `desktop-file-utils xprop`

While other distributions require the same libraries, their package names may vary. You can find some of these in the [tips for community supported distributions](#tips-for-unsupported-distros) section.

### Debian / Ubuntu

> **Critical Note:** Be sure you do **not** have both **libssl1.0.0 and libssl1.0.2 installed** or the Live Share agent may crash. You will need to remove one of these libraries if both are installed. Use `sudo apt remove libssl1.0.0` to or `sudo apt remove libssl1.0.2` to remove one. Pay close attention to what else will be removed when wto ensure this will not negatively affect your system. See [here](https://github.com/dotnet/core/issues/973) for additional information on this .NET Core bug.

Libraries may be installed on Debian/Ubuntu based distributions by running `sudo apt install <library-name>` in a terminal.

For Ubuntu based distributions including Mint, run:

    sudo apt install libssl1.0.0 libkrb5-3 zlib1g libicu[0-9][0-9] gnome-keyring libsecret-1-0 desktop-file-utils x11-utils

For Debian 9 and non-Ubuntu downstream distributions, run:

    sudo apt install libssl1.0.2 libkrb5-3 zlib1g libicu57 gnome-keyring libsecret-1-0 desktop-file-utils x11-utils

### Fedora / CentOS / RHL

Libraries may be installed on Fedora/CentOS/RHL based distributions by running `sudo yum install <library-name>` in a terminal. For example, this will install everything:

    sudo yum install openssl-libs krb5-libs zlib libicu libsecret gnome-keyring desktop-file-utils xorg-x11-utils

## VS Code OSS Issues

> **Arch Linux/Manjaro Users:** Use the [visual-studio-bin](https://aur.archlinux.org/packages/visual-studio-code-bin) AUR package to avoid this problem.

Packages of Visual Studio Code that are either vanilla or modified versions of VS Code OSS can be missing a critical value in `product.json` file that prevents Visual Studio Live Share from activating.

A quick way to see you might be hitting this problem is to go to Help > "Toggle Developer Tools" and see if you find a stack trace indicating the Live Share extension did not activate because it was using a "proposed API."

To verify this is your issue, check the contents of `product.json`. The file's location does vary by package, but it is usually in one of the following locations:

- `/usr/share/code/resources/app/product.json`
- `/usr/share/vscode/resources/app/product.json`

If the `extensionAllowedProposedApi` property is missing or you do not see "ms-vsliveshare.vsliveshare" referenced, you are using an OSS version with this problem. 

As a **workaround**, you can add the following into the product.json:

        "extensionAllowedProposedApi": [
          "ms-vsliveshare.vsliveshare",
          "ms-vscode.node-debug",
          "ms-vscode.node-debug2"
     ]

See [above](#tips-for-community-supported-distros) for additional details on whether the distribution you are using is known to work.

## Linux browser integration

Visual Studio Live Share typically **does not require additional installation steps** to enable browser integration on Linux.

To accomplish this, Live Share automatically places a desktop file in `~/.local/share/applications` and the required launcher itself in `~/.local/share/vsliveshare` when the extension first initializes. No action is required on your part if this succeeds.

In some cases, distributions either do not support this location or require tweaks to get it to work with their vanilla installs. In these cases, Live Share falls back to using `/usr/local/share` instead. As a result, **you may be notified that your admin (sudo) password is required** to complete the installation process. A terminal window will appear telling you where the browser launcher will be installed. Simply enter your password when prompted and press enter once the installation completes to close the terminal window.

If you'd prefer to run the command yourself instead, you can click "Copy instead" which will copy the terminal command to the clipboard instead.

Finally, if you opt to skip this step entirely, you can still [join collaboration sessions manually](../use/vscode.md#join-manually), but you will not be able to join by opening an invite link in the browser. Note that you can always access the command again later, by hitting **Ctrl+Shift+P / Cmd+Shift+P** and selecting the "Live Share: Launcher Setup" command.

## See also

- [How-to: Collaborate using Visual Studio Code](../use/vscode.md)
- [Connectivity requirements for Live Share](connectivity.md)
- [Security features of Live Share](security.md)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
