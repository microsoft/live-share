---
title: "Linux installation details -  Visual Studio Live Share | Microsoft Docs"
titleSuffix: Live Share
description: "Detailed information on installing Visual Studio Live Share on Linux."
ms.date: 01/22/2022
ms.reviewer: mikejo5000
ms.topic: reference
author: fubaduba
ms.author: fishah
manager: jmartens
---

<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Linux installation details

Linux is a highly variable environment and with the sheer number of desktop environments and distributions can be complicated to get working. If you stick to supported versions of **Ubuntu Desktop** (16.04+), **CentOS 7**, or **Fedora Workstation** (27+) and only use **official distributions of VS Code**, you should find the process straight forward. However, in the event that you are using a non-standard configuration or downstream distribution, you may or may not run into some hiccups. This document provides some information on requirements and some troubleshooting details that might help you get up and running even if your configuration is only community supported. Note that Live Share only supports **64-bit Linux**.

## VS Code OSS Issues

> **Arch Linux/Manjaro Users:** Use the [visual-studio-bin](https://aur.archlinux.org/packages/visual-studio-code-bin) AUR package to avoid this problem.

Packages of Visual Studio Code that are either vanilla or modified versions of VS Code OSS can be missing a critical value in `product.json` file that prevents Visual Studio Live Share from activating.

A quick way to see you might be hitting this problem is to go to Help > "Toggle Developer Tools" and see if you find a stack trace indicating the Live Share extension did not activate because it was using a "proposed API."

To verify this is your issue, check the contents of `product.json`. The file's location does vary by package, but it is usually in one of the following locations:

- `/usr/share/code/resources/app/product.json`
- `/usr/share/vscode/resources/app/product.json`

If the `extensionAllowedProposedApi` property is missing or you do not see "ms-vsliveshare.vsliveshare" referenced, you are using an OSS version with this problem.

As a **workaround**, you can add the following into the product.json:

```json
"extensionAllowedProposedApi": [
  "ms-vsliveshare.vsliveshare",
  "ms-vscode.node-debug",
  "ms-vscode.node-debug2"
]
```

See [above](#tips-for-community-supported-distros) for additional details on whether the distribution you are using is known to work.

## Linux browser integration

Visual Studio Live Share typically **does not require additional installation steps** to enable browser integration on Linux.

To accomplish this, Live Share automatically places a desktop file in `~/.local/share/applications` and the required launcher itself in `~/.local/share/vsliveshare` when the extension first initializes. No action is required on your part if this succeeds.

In some cases, distributions either do not support this location or require tweaks to get it to work with their vanilla installs. In these cases, Live Share falls back to using `/usr/local/share` instead. As a result, **you may be notified that your admin (sudo) password is required** to complete the installation process. A terminal window will appear telling you where the browser launcher will be installed. Simply enter your password when prompted and press enter once the installation completes to close the terminal window.

If you'd prefer to run the command yourself instead, you can click "Copy instead" which will copy the terminal command to the clipboard instead.

Finally, if you opt to skip this step entirely, you can still [join collaboration sessions manually](../use/share-project-join-session-visual-studio-code.md#join-manually), but you will not be able to join by opening an invite link in the browser. Note that you can always access the command again later, by hitting **Ctrl+Shift+P / Cmd+Shift+P** and selecting the "Live Share: Launcher Setup" command.

## See also

- [Install and sign in to Live Share in Visual Studio Code](../use/install-live-share-visual-studio-code.md)
- [Connectivity requirements for Live Share](connectivity.md)
- [Security features of Live Share](security.md)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
