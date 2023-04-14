---
title: "Live Share in Visual Studio Code for the Web | Microsoft Docs"
description: "Live Share in Visual Studio Code for the Web"
ms.date: 03/18/2020
ms.reviewer: ""
ms.suite: ""
ms.topic: "quickstart"
author: "fubaduba"
ms.author: "fishah"
manager: "joncart"
ms.workload: 
  - "liveshare"
---

<!--
Copyright &copy; Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Live Share in Visual Studio Code for the Web

[Visual Studio Code for the Web](https://code.visualstudio.com/blogs/2021/10/20/vscode-dev) allows you to visit https://vscode.dev, and open a local folder, or GitHub/Azure DevOps repository, directly from your browser! This enables you to edit code from anywhere, and on any device, without needing to install anything in order to get started. Furthermore, since collaboration is such a key part of many developer's workflow, the [Live Share extension](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare) fully supports Visual Studio Code for the Web, so that you can work alongside your peers, in a more lightweight and simplified way.

## Getting Started

To start a Live Share session from the browser, simply perform the following steps:

1. Install the [Live Share extension](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)
2. Click the `Live Share` button on the status bar. If prompted, sign in with either a GitHub or Microsoft identity
3. Share the session URL with the developers you want to collaborate with!

Once someone clicks that link, their browser will launch, and they'll be asked whether they'd like to join the session from the Web or Visual Studio/VS Code. They can choose to authenticate with their GitHub or Microsoft identity, or continue as an anonymous guest.

## Joining from the Desktop

While Visual Studio Code for the Web provides a lightweight, installation-free experience, many developers already have a desktop client installed, and may prefer to collaborate from there. As a result, the Live Share extension makes it easy to join a collaboration session from the desktop, in addition to the vscode.dev-based client.

### Opening from Web

If someone sent you a Live Share link, and you opened it in your browser, you can easily transition to the desktop using one of the following commands:

1. Clicking the "hamburger" menu in the upper left-hand corner of the editor, and selecting `Open in VS Code` or `Open in Visual Studio`
1. Click the green `Live Share` status bar button in the lower left-hand corner of the editor, and selecting `Open in VS Code` or `Open in Visual Studio`
3. Opening the command palette and selecting `Live Share: Open in VS Code` or `Live Share: Open in Visual Studio`

Each of these entry points will launch the selected desktop client and automatically join you into the active session.

### Opening from Desktop

If you've already got Visual Studio or Visual Studio Code installed and opened, and someone sends you a session URL, then you can join directly from the desktop using one of the following approaches:

1. **VS Code:**
   1. Opening the `Live Share` tab, clicking the `Join` button, and pasting the session URL
   2. Opening the command palette and selecting `Live Share: Join Collaboration Session`
1. **Visual Studio:** Selecting the `File -> Join Collaboration Session` menu

## Known Issues

Live Share supports most of the same features between desktop and the Web, however, there are currently a few capabilities which aren't available in the Web. We're actively working on closing these gaps, but in the meantime, if you need to leverage any of the following features, you can host/join from a desktop client, as opposed to the web:

1. Shared servers
1. Shared version control state
3. Multi-root workspaces
4. `.vsls.json`-based file filtering
