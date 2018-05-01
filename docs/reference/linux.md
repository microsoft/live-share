---
title: "Linux installation details -  Visual Studio Live Share | Microsoft Docs"
description: "Detailed information on installing Visual Studio Live Share on Linux."
ms.custom:
ms.date: 04/30/2018
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

Linux is a highly variable environment and with the sheer number of desktop environments and distributions can be complicated to get working. Users that stick to Ubuntu Desktop, Fedora, or CentOS and official distribution of VS Code should find the process straight forward. However, in the event that you are using a down stream distribution, you may or may not run into some hiccups. This document provides some information on requirements and some troubleshooting details.

## Install Linux prerequisites

Some distributions of Linux are missing libraries Live Share needs to function. By default, Live Share attempts to detect and install Linux prerequisites for you. You'll see a toast notification when Live Share encounters a problem that can originate from missing libraries asking you for permission to install them.

![Toast notification showing message that Linux pre-requisites are missing](../media/vscode-linux-prereq-missing.png)

When you click "Install", a terminal window will appear where you'll need to enter your admin (sudo) password to continue. Assuming it completes successfully, restart Visual Studio Code you should be all set!

If you see a message indicating the script does not support your distribution, see **[tips for unsupported distributions](../reference/linux.md#tips-for-unsupported-distros)** for community tips and issues.

If you **prefer not to have VS Code run the command for you**, you can also opt to re-run the very latest version of this script at any time manually by running the following command from a Terminal window:

    wget -O ~/vsls-reqs https://aka.ms/vsls-linux-prereq-script && bash ~/vsls-reqs

### Known missing libraries by distribution

While the script above should cover Debian / Ubuntu, RHL / Fedora / CentOS, you may be wondering what typically is missing from vanilla installations of these distributions. The following list shows the key libraries that were found to be missing with a fresh install of the distribution.

| Distribution | Missing libraries |
|--------|-------------------|
| Ubuntu Desktop 18.04 (64-bit) | `libcurl3 liblttng-ust0 apt-transport-https` |
| Ubuntu Desktop 17.10 (64-bit) | `libunwind8 liblttng-ust0` |
| Ubuntu Desktop 16.04 (64-bit) | &lt;none&gt; |
| Kubuntu 16.04 (64-bit) | `libunwind8 liblttng-ust0 gnome-keyring desktop-file-utils` |
| Xubuntu 16.04 (64-bit) | `libunwind8 liblttng-ust0` |
| Mint 18.3 - Cinnamon (64-bit) | `libcurl3` |
| Fedora 27 (64-bit) | &lt;none&gt; |
| CentOS 7 | &lt;none&gt; |
| Debian 9 GNOME | `libunwind8 liblttng-ust0 apt-transport-https gettext` |
| openSuSE 12 (64-bit) | &lt;none&gt; |

See **[tips for unsupported distributions](#tips-for-unsupported-distros)** for information about whether certain non-Debian / Ubuntu or RHL based distributions are working or not.

Note that the Linux ecosystem moves quickly and that the package names may vary in certain distributions, so your results may vary. Additional details can be found below on the libraries Live Share needs.

### Details on required libraries

Visual Studio Live Share uses the .NET Core runtime which requires a number of libraries be installed. The following libraries may be missing from certain **Debian/Ubuntu** distributions or derivatives:

- libunwind8
- liblttng-ust0
- libcurl3
- libssl1.0.0 (Ubuntu 16.X, 17.X, 18.X)
- libssl1.0.2 (Debian 9)
- libuuid1
- libkrb5-3
- zlib1g
- libicu55 (for Ubuntu 16.X)
- libicu57 (for Ubuntu 17.X)
- libicu60 (for Ubuntu 18.X)
- gettext
- apt-transport-https

In addition, the following are libraries **Live Share itself depends on** that may be missing in some instances (e.g. distributions not using Gnome):

- gnome-keyring
- libsecret-1-0
- desktop-file-utils

Libraries may be installed on Debian/Ubuntu based distributions by running `sudo apt install <library-name>` in a terminal. For example, this will install everything for Ubuntu 16.04/17.10/18.04 or Mint 18.3:

    sudo apt install libunwind8 liblttng-ust0 libcurl3 libuuid1 libkrb5-3 zlib1g gnome-keyring libsecret-1-0 desktop-file-utils gettext apt-transport-https libssl1.?.? libicu??

The last two parts of the command automatically determines which version of libssl and libicu to install.

**Fedora/CentOS/RHL** requires similar packages but with slightly different names:

- libunwind
- lttng-ust
- libcurl
- openssl-libs
- libuuid
- krb5-libs
- libicu
- zlib

As with Debian/Ubuntu, **Live Share itself** depends on the following:

- gnome-keyring
- libsecret
- desktop-file-utils

Libraries may be installed on Fedora/CentOS/RHL based distributions by running `sudo yum install <library-name>` in a terminal. For example, this will install everything:

    sudo yum install libunwind lttng-ust libcurl openssl-libs libuuid krb5-libs libicu zlib gnome-keyring libsecret desktop-file-utils

Other distributions will require the same libraries, but the package names may be subtly different. You can [read more about .NET Core 2.0 prerequisites for other distributions here](https://docs.microsoft.com/en-us/dotnet/core/linux-prerequisites?tabs=netcore2x#linux-distribution-dependencies).

## Linux browser integration

Visual Studio Live Share typically does not require additional steps to enable browser integration on Linux. However, in certain distributions you may be notified that your admin (sudo) password is required to complete the installation process.

A terminal window will appear telling you where the browser launcher will be installed. Simply enter your password when prompted and press enter once the installation completes to close the terminal window.

If you'd prefer to run the command yourself instead, you can click "Copy instead" which will copy the terminal command to the clipboard instead.

Finally, if you opt to skip this step entirely, you can still [join collaboration sessions manually](../use/vscode.md#join-manually), but you will not be able to join by opening an invite link in the browser. Note that you can always access the command again later, by hitting **Ctrl+Shift+P** and selecting the "Live Share: Launcher Setup" command.

## Tips for unsupported distros

Distributions outside of the Debian / Ubuntu or RHL trees are not officially supported by Visual Studio Code or .NET Core and therefore are not, by extension, officially supported by VS Live Share. However, the Live Share community has helped us built up a knowledge base of the what is needed to get Live Share working on other distributions.

> **PRs welcome:** If you're interested in updating this information with your favorite distribution, submit a PR for [this file](https://github.com/MicrosoftDocs/live-share/tree/master/docs/reference/linux.md) in our docs GitHub repo. Even better, if you'd like to get the dependency installer supporting your favorite distribution, you can submit a PR [for this file](https://github.com/MicrosoftDocs/live-share/blob/master/scripts/linux-prereqs.sh).


| Distribution | Working? | Missing libraries | Additional Tips |
|--------------|----------|-------------------|------------------|
| ArchLinux | Yes | Varies. Use the dependency installer. Most common are **gnome-keyring** and **libsecret**.  | Notes:<ul><li>Use the [visual-studio-code-bin](https://aur.archlinux.org/packages/visual-studio-code-bin) AUR package for VS Code.</li><li>In addition, **gnome-keyring** may require additional [setup steps](https://wiki.archlinux.org/index.php/GNOME/Keyring) in some desktop environments.</lu></ul> |
| Manjaro 17.1 | Yes | Use the dependency installer. | Use the [visual-studio-code-bin](https://aur.archlinux.org/packages/visual-studio-code-bin) AUR package for VS Code. |
| Solus 3 | **No** | Unknown |**Issues:** VS Code package is missing product.json values ([see below](#vs-code-oss-issues)). Even with workaround, fails due to a .NET Core bug (see [here](https://github.com/dotnet/corefx/issues/24952) and [here](https://github.com/dotnet/corefx/issues/19718)). |
| Gentoo | **No** | Highly variable. | **Issue:** Fails due to a .NET Core bug (see [here](https://github.com/dotnet/corefx/issues/24952) and [here](https://github.com/dotnet/corefx/issues/19718)). |


### VS Code OSS Issues

> **ArchLinux/Manjaro Users:** Use [visual-studio-bin](https://aur.archlinux.org/packages/visual-studio-code-bin) to avoid this problem.

Non-official distributions of Visual Studio Code can be missing a critical value in  `product.json` file that prevents Visual Studio Live Share from activating. In this case, if you go to Help > "Toggle Developer Tools", you will see stack traces indicating the Live Share extension did not activate due to it using a "proposed API."

To verify this is your issue, check the contents of `product.json`. The file could be located in one of the following locations:

- `/usr/share/code/resources/app/product.json`
- `/usr/share/vscode/resources/app/product.json`

If the `extensionAllowedProposedApi` property is missing or you do not see "ms-vsliveshare.vsliveshare" referenced, you are using an unofficial version with this problem.  **Contact the VS Code distribution owner to get the issue patched.**

As a **workaround**, you can add the following into the product.json:

        "extensionAllowedProposedApi": [
          "ms-vsliveshare.vsliveshare",
          "ms-vscode.node-debug",
          "ms-vscode.node-debug2"
     ]

## See also

- [How-to: Collaborate using Visual Studio Code](../use/vscode.md)
- [Connectivity requirements for Live Share](connectivity.md)
- [Security features of Live Share](security.md)


Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).