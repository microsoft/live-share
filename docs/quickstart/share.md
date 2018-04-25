---
title: "Share quickstart - Visual Studio Live Share | Microsoft Docs"
description: "An abridged walkthrough on sharing your first project using a Visual Studio Live Share collaboration session."
ms.custom:
ms.date: 03/22/2018
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "liveshare"
ms.topic: "quickstart"
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

# Quickstart: Share your first project

> **Note: Visual Studio Live Share is currently in preview. Features and UX are not final.**

Welcome to Visual Studio Live Share! Live Share lets you achieve greater confidence at speed by streamlining collaborative editing, debugging, and more in real-time during development. You get real-time sharing in tools you love. You can share the full context of your code, collaboratively edit while still navigating files independently, securely share local servers, and even collaboratively debug while still retaining the ability to inspect on your own.

Ready to get going?  Team collaboration should be so quick and natural, that it becomes harder not to do it! For this reason, Visual Studio Live Share makes it simple to get started, so that you can seamlessly begin sharing your work and ideas.

>**Tip:** Did you know you can *join your own collaboration session*? This allows you to try Live Share on your own or to spin up a instance of VS or VS Code and connect to it remotely! You can even use the same identity on both instances. Check it out!

**Linux users: Be sure you have the needed [library prerequisites installed](../use/vscode.md#install-linux-prerequisites).**

Just follow these steps to start sharing.

### 1. Install the extension

Installing the extension is easy. Just follow these steps:

<table style="width: 100%; border:none;">
<tr>
    <td width="128px" style="width: 128px; text-align: center; border:none;"><img src="../media/vs-code.svg" width="128px" alt="Visual Studio Code logo"/></td>
    <td style="border:none;">
        <strong>Visual Studio Code (1.22.0+)</strong><br />
        1. Install <a href="https://code.visualstudio.com/">Visual Studio Code</a> for Windows (7, 8.1, or 10), macOS <b>(Sierra+)</b>, 64-bit Linux <b>(<a href="../use/vscode.md#installation">details</a>)</b><br />
        2. <strong>Linux users</strong>: Be sure you have installed the needed <a href="../use/vscode.md#install-linux-prerequisites">prerequisite libraries</a>.<br />
        3. Download and install the VS Live Share extension from the marketplace. <br />
        4. Reload and wait for dependencies to download and install (see status bar).<br />
        <a href="https://aka.ms/vsls-dl/vscode"><img src="../media/download.png" alt="Download button"></a>
    </td>
</tr>
<tr style="border:none;">
    <td width="128px" style="width: 128px; text-align: center; border:none;"><img src="../media/vs-ide.svg" width="128px" alt="Visual Studio logo" /></td>
    <td style="border:none;">
        <strong>Visual Studio 2017 15.6 or higher</strong><br />
        1. Install the latest version of <a href="https://www.visualstudio.com/vs/">VS 2017</a> (15.6+) on Windows (7, 8.1, or 10).<br/>
        2. Install a supported workload. e.g. ASP.NET, .NET Core, and/or Node.js<br />
        3. Download and install the VS Live Share extension from the marketplace. <br />
        <a href="https://aka.ms/vsls-dl/vs"><img style="padding: 0; spacing: 0;" src="../media/download.png" alt="Download button"></a><br />
    </td>
</tr>
</table>

By downloading and using Visual Studio Live Share, you agree to the [license terms](https://aka.ms/vsls-license) and [privacy statement](https://www.microsoft.com/en-us/privacystatement/EnterpriseDev/default.aspx). See [troubleshooting](../troubleshooting.md) if you run into problems.

### 2. Sign in

After installing the Live Share extension, restarting, and waiting for dependencies to finish installing (VS Code), you'll want to sign in to let other participants know who you are. Simply click the "sign in" button / status bar item to get started.

<table style="border: none;">
<tr style="border: none;">
    <td width="50%" style="vertical-align: top; border: none;">
        <img src="../media/vscode-sign-in-button.png" width="100%" alt="Visual Studio Code sign in status bar item"/>
    </td>
    <td width="50%" style="vertical-align: top; border: none;">
        <img src="../media/vs-sign-in-button.png" width="100%" alt="Visual Studio sign in button"/>
    </td>
</tr>
</table>

In **VS Code**, a browser will appear for you to use to complete the sign in process. Simply close the browser when done.

> **Linux users:** VS Code will also [prompt you to enter a user code](../use/vscode.md#sign-in-using-a-user-code) when opening the browser window. The code can be found by clicking on the "Having trouble? Click here for user code directions" link that appears in the "Ready to collaborate!" page after you've signed into Live Share via the browser. Simply paste this user code in the prompt's input field in VS Code and hit enter to finish.

If you are using **Visual Studio** and have already signed into the tool, Visual Studio Live Share will automatically use your [personalization account](https://docs.microsoft.com/en-us/visualstudio/ide/signing-in-to-visual-studio) so you can skip this step or simply sign in as you would normally. If you'd prefer to use a different sign-in than your VS personalization account, go to **Tools &gt; Options &gt; Live Share &gt; User account** to switch credentials.

There are a few other tips in [troubleshooting](../troubleshooting.md#sign-in), but if this still doesn't work, email vsls-feedback@microsoft.com and we can swap your email out.

### 3. Open a folder, project, or solution

Open a folder, project, or solution you would like to share in Visual Studio or Visual Studio Code as you would normally (via the file menu, a terminal, a explorer context menu, etc).

### 4. [Optional] Hide or exclude files

If you would prefer to hide or prevent guest access to certain files or folders, a **.vsls.json** file can be added to your project with these settings. See [controlling file access and visibility](../reference/security.md#controlling-file-access-and-visibility) for details.

### 5. Start a collaboration session

Open a folder, project, or solution, and simply click "Share" within your tool and an invite link will be automatically copied to your clipboard.

<table style="border: none;">
<tr style="border: none;">
    <td width="50%" style="vertical-align: top; border: none;">
        <img src="../media/vscode-share-button.png" width="100%" alt="Visual Studio Code share status bar item" />
    </td>
    <td width="50%" style="vertical-align: top; border: none;">
        <img src="../media/vs-share-button.png" width="100%" alt="Visual Studio share button"/>
    </td>
</tr>
</table>

> **Note:** You may be asked by your desktop firewall software to allow the Live Share agent to open a port the first time you share. Accepting this is entirely optional but enables a secured "direct mode" to improve performance when the person you are working with is on the same network as you are. See [change the connection mode](../reference/connectivity.md#changing-the-connection-mode) for details.

### 6. Send someone the invite link

Send the link over e-mail, Slack, Skype, etc. and when opened in a browser will allow them to join a collaboration session that shares contents of the folder, project, or solution you opened. However, given the level of access Live Share sessions can provide to guests, **be sure you only share with people you trust** and think through the implications of what you are sharing.

> **Security Tip:** Want to understand the security implications of some of Live Share's features? Check out the [security](../reference/security.md) article.

If they've got more questions, the "[Quickstart: Join your first session](join.md)" article provides some more information on getting up and running as a guest.

### 7. [Optional] Approve the guest

By default, guests will automatically join your collaboration session and you'll be notified when they're ready to work with you.

<table style="border: none;">
<tr style="border: none;">
    <td width="50%" style="vertical-align: top; border: none;">
        <img src="../media/vscode-join-notification.png" width="100%" alt="Visual Studio Code join notification" />
    </td>
    <td width="50%" style="vertical-align: top; border: none;">
        <img src="../media/vs-join-notification.png" width="100%" alt="Visual Studio join notification"/>
    </td>
</tr>
</table>

While this notification gives you the option to remove them from the session, you can also opt to instead require an explicit "approval" for anyone joining. If you have this setting turned on, a notification will prompt you to approve the guest before they can join.

See [requiring guest approval](../reference/security.md#requiring-guest-approval) for details on how to turn this feature on.

### 6. Collaborate!

That's it!! Here's a few things to try out once a guest has joined you:

1. Move around to different files in the project independently and make some edits
2. Jump to the guest's location and edit something together
3. Pin to the guest and follow as they make edits in different files
4. Start up a co-debugging session with them
5. Share a local server so you can check out something like a web app running on their machine

Check out the [Visual Studio Code](../use/vscode.md) and [Visual Studio](../use/vs.md) extension docs for information on how to do these actions and more.

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).

## Next Steps

Check out these additional articles for more information.

- [Quickstart: Join your first collaboration session](join.md)
- [How-to: Collaborate using Visual Studio Code](../use/vscode.md)
- [How-to: Collaborate using Visual Studio](../use/vs.md)

Reference

- [Connectivity requirements for Live Share](../reference/connectivity.md)
- [Security features of Live Share](../reference/security.md)
- [Language and platform support](../reference/platform-support.md)
- [Extension support](../reference/extensions.md)
