---
title: "Manual join -  Visual Studio Live Share | Microsoft Docs"
description: "Information on joining a collaboration session manually in Visual Studio Live share."
ms.custom:
ms.date: 03/22/2018
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
# Join a session manually

In addition to opening a link in a browser to join a collaboration session, you can manually join by pasting the link into an already running tool. This can be useful if you want to use a different tool than you usually do or if you are having trouble with getting invite links to work for some reason.

The exact instructions vary between [Visual Studio](#join-from-visual-studio) and [Visual Studio Code](#join-from-visual-studio-code), so pick the tool you intend to use for more information.

## Join from Visual Studio Code

#### 1. Sign in

In order to collaborate, you'll need sign into Visual Studio Live Share so everyone knows who you are. Hit **Ctrl+Shift+P** and select the "Live Share: Sign in" command or simply click on the "Sign in" status bar item and follow the directions to sign in.

 ![VS Code Download](../media/vscode-sign-in-button.png)

A browser will appear where you can complete the sign-in process.

If you are running into problems with VS Code not picking up a successful sign-in, click on the "Having trouble" link on the success screen in the browser and follow the directions. Check out [troubleshooting](../troubleshooting.md#sign-in) for more tips.

#### 2. Use the join command

Hit **Ctrl+Shift+P**and select "Live Share: Join collaboration session" or used the scoped command menu by clicking on the session state status bar item and select "Join Collaboration Session".

![Join scoped command menu item](../media/vscode-join.png)

#### 3. Paste the invite link

Paste in the invite URL you were sent and confirm.

That's it! You should be connected to the collaboration session momentarily.

## Join from Visual Studio

#### 1. Sign in

Once installed, start VS and sign in if you have not already. If you need to use a different sign-in for Visual Studio than your [personalization account](https://docs.microsoft.com/en-us/visualstudio/ide/signing-in-to-visual-studio), go to **Tools &gt; Options &gt; Live Share &gt; User account**. 

![VS sign in](../media/vs-sign-in-button.png)

Still having trouble? See [troubleshooting](../troubleshooting.md#sign-in).

#### 2. Use the join command

Simply go to **File > Join Collaboration Session**.

![VS Join menu](../media/vs-join.png)

#### 3. Paste the invite link

Paste in the invite URL you were sent and confirm.

That's it! You should be connected to the collaboration session momentarily.

## Troubleshooting

Still having issues? Check out [troubleshooting](../troubleshooting.md#share-and-join).

## See also

Quickstarts

- [Quickstart: Share your first project](../quickstart/share.md)
- [Quickstart: Join your first session](../quickstart/join.md)
- [Quickstart: Collaborate on a Node.js app in VS Code](../quickstart/nodejs.md)
- [Quickstart: Collaborate on a ASP.NET app in Visual Studio](../quickstart/aspdotnet.md)

How-tos

- [How-to: Collaborate using Visual Studio Code](../use/vscode.md)
- [How-to: Collaborate using Visual Studio](../use/vscode.md)
- [How-to: Provide feedback](../support.md)

Reference

- [Connectivity requirements for Live Share](connectivity.md)
- [Language and platform support](platform-support.md)
- [Extension support](extensions.md)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
