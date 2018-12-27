---
title: "Overview - Visual Studio Live Share | Microsoft Docs"
description: "An overview of Visual Studio Live Share and its capabilities."
ms.custom:
ms.date: 04/26/2018
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "liveshare"
ms.topic: "overview"
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

# What is Visual Studio Live Share?

> **Note: Visual Studio Live Share is currently in preview. User experience and features are not final.**

Welcome to Visual Studio Live Share! Live Share enables you to collaboratively edit and debug with others in real time, regardless what programming languages you're using or app types you're building. It allows you to instantly and securely share your current project, and then as needed, share debugging sessions, terminal instances, localhost web apps, voice calls, and more!

Additionally, unlike traditional pair programming, Visual Studio Live Share allows developers to work together, while retaining their personal editor preferences (e.g. theme, keybindings), as well as having their own cursor. This allows you to seamlessly transition between following one another, and being able to explore ideas/tasks on your own. In practice, this ability to work together _and_ independently provides a collaboration experience that is potentiallty more natural for many common use cases.

Ready to get going? In this article we'll run you through some concepts and how to install the needed extensions. If you're looking for an abridged version, check out the [share](quickstart/share.md) and [join](quickstart/join.md) quickstarts.

>**Tip:** Did you know you can *join your own collaboration session*? This allows you to try Live Share on your own or to spin up an instance of Visual Studio or VS Code and connect to it remotely! You can even use the same identity on both instances. Check it out!

## Install Visual Studio Live Share

Before you begin, you need to be sure you have a version of Visual Studio or Visual Studio Code installed that meets Live Share's core requirements.

- **Visual Studio Code 1.22.0 or higher** - Windows 7, 8.1, or 10, macOS *(Sierra 10.12 and above only)*, 64-bit Linux *(64-bit Ubuntu Desktop 16.04+, Fedora 27+ recommended - [see details](use/vscode.md#installation))*.
- **Visual Studio 2017 15.6 or higher** (any edition) - Windows 7, 8.1, or 10.
- **Visual Studio 2019** (any edition) - Windows 7, 8.1, or 10. 

After that, downloading and installing the Visual Studio Live Share extension is a breeze:

<table style="width: 100%; border:none;">
<tr>
    <td width="128px" style="width: 128px; text-align: center; border:none;"><img src="media/vs-code.svg" width="128px" alt="Visual Studio Code logo"/></td>
    <td style="border:none;">
        <strong>Visual Studio Code (1.22.0+)</strong><br />
        1. Install <a href="https://code.visualstudio.com/">Visual Studio Code</a> for Windows (7, 8.1, or 10), macOS <b>(Sierra+)</b>, 64-bit Linux <b>(<a href="use/vscode.md#installation">details</a>)</b><br />
        2. Download and install the Visual Studio Live Share extension from the marketplace. <br />
        3. Reload and wait for dependencies to download and install (see status bar).<br />
        4. <strong>Linux</strong>: If prompted to <a href="reference/linux.md#install-linux-prerequisites">install libraries</a>, click install, enter password, restart VS Code when done.<br />
        <a href="https://aka.ms/vsls-dl/vscode"><img src="media/download.png" alt="Download button"></a>
    </td>
</tr>
<tr style="border:none;">
    <td width="128px" style="width: 128px; text-align: center; border:none;"><img src="media/vs-ide.svg" width="128px" alt="Visual Studio logo" /></td>
    <td  style="border:none;">
        <strong>Visual Studio 2017 15.6 or higher</strong><br />
        1. Install the latest version of <a href="https://visualstudio.microsoft.com/vs/">Visual Studio 2017</a> (15.6+) on Windows (7, 8.1, or 10).<br/>
        2. Install a <a href="reference/platform-support.md">supported workload</a>. (e.g. ASP.NET, .NET Core, C++, and/or Node.js)<br />
        3. Download and install the Visual Studio Live Share extension from the marketplace. <br />
        <a href="https://aka.ms/vsls-dl/vs"><img style="padding: 0; spacing: 0;" src="media/download.png" alt="Download button" ></a><br />
    </td>
</tr>
<tr style="border:none;">
    <td width="128px" style="width: 128px; text-align: center; border:none;"><img src="media/vs-ide-preview.svg" width="128px" alt="Visual Studio Preview logo" /></td>
    <td  style="border:none;">
        <strong>Visual Studio 2019 </strong><br />
        1. Install the latest preview version of <a href="https://aka.ms/vs-preview">Visual Studio 2019</a>.<br/>
        2. Install a <a href="reference/platform-support.md">supported workload</a>. (e.g. ASP.NET, .NET Core, C++, and/or Node.js)<br />
        3. Visual Studio Live Share is installed by default with these workloads. <br />
    </td>
</tr>
</table>

By downloading and using Visual Studio Live Share, you agree to the [license terms](https://aka.ms/vsls-license) and [privacy statement](https://www.microsoft.com/en-us/privacystatement/EnterpriseDev/default.aspx). See [troubleshooting](troubleshooting.md) if you run into problems.

That's all there is to it! You should now see a sign in status bar in the lower left in VS Code and a share button in the upper right in Visual Studio. Check out the rest of the documentation for what to do next!

## Concepts and features

As with any product, Visual Studio Live Share provides a set of powerful features built up from some core concepts. This section gives you some concepts and a brief tour of features.

### Collaboration sessions

All collaboration activities in Visual Studio Live Share involve a single **collaboration session host** and one or more **guests**. The host is the person that started the collaboration session and anyone that joins is a guest.

Collaboration session hosts can use all of their tools and services but guests are only given access to the specific things the host has shared with them. This includes code, running servers, debugging sessions, terminals and more. Currently all content that is shared is kept on the host's machine and not synchronized to the cloud or on the guest's machine which enables _instant access_ and _increased security_. The advantage is that the entire solution is available the moment a guest joins, and the moment a host ends a collaboration session, the content is no longer available. Further, temp files created by the IDE/editor to improve performance for the guest are automatically cleaned up when the session ends.

#### Sharing

When you "share" as a host, you start up a collaboration session that shares the contents of a project, solution, or a folder. Guests get access to this content using the invitation link that you send them. While "share" is shorthand for "share a project," it also opens the door for sharing other capabilities like debugging.

**Learn more:** [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#share-a-project) [![VS](media/vs-icon-15x15.png)](use/vs.md#share-a-project)

#### Joining

Clicking an invitation link sent to you by a host allows you to "join" a collaboration session as a guest and access any content or capabilities the host has opted to share with you. The web link provides a quick way to hop into a collaboration session if you already have the extension installed, and a quick way to set up information if you do not.

**Learn more:** [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#join-a-collaboration-session) [![VS](media/vs-icon-15x15.png)](use/vs.md#join-a-collaboration-session)

### Features

#### Co-editing

When you open the same file as another collaborator, you are instantly able to "collaboratively edit" or "co-edit" the file's contents. You can see each collaborator's edits, their cursors and selections, and more. Even better, you are not forced into editing the same file at all times so you can opportunistically collaborate and act independently as you see fit.

> **Note:** Co-editing has a few limitations. See [platform support](reference/platform-support.md) for the state of features by language.

**Learn more:** [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#co-editing) [![VS](media/vs-icon-15x15.png)](use/vs.md#co-editing)

#### Following and focusing

Sometimes you need to explain a problem or design that spans multiple files or locations in code. In these situations, it can be useful to temporarily follow a colleague as they move throughout the project when co-editing. For this reason, as a guest, when you join a collaboration session you automatically "follow" the host's edit location. Hosts and guests can hop in and out of following one another with a simple mouse click. In addition, you may find that you want to ask all participants to follow you. Live Share lets you request that everyone "focus" their attention on you with a notification that makes it easy for them to follow you back.

**Learn more:** [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#following) [![VS](media/vs-icon-15x15.png)](use/vs.md#following)

#### Co-debugging

When you're debugging tough coding problems or bugs, having an extra pair of eyes can be really useful. As a host, Live Share automatically enables "collaborative debugging" or "co-debugging" by sharing the debugging session with all guests. You each get co-editing features along with the ability to investigate independently as you step through together.

> **Note:** See [platform support](reference/platform-support.md) for the state of debugging features by language or platform.

**Learn more:** [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#co-debugging) [![VS](media/vs-icon-15x15.png)](use/vs.md#co-debugging)

#### Share server / Share port

When co-debugging, it can be really useful to get access to different parts of the application being served up by the host for the debugging session. You  may want to access the app in a browser, access a local database, or hit a REST endpoint from your tools. Live Share lets you "share a server", which maps a local port on the host's machine to the exact same port on each guest's machine. As a guest, you can then interact with the application exactly as if it was running locally on your machine (for example, the host and guest can both access a web app running on http://localhost:3000).

**Learn more:** [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#share-a-server) [![VS](media/vs-icon-15x15.png)](use/vs.md#share-a-server)

#### Share terminals

Modern development makes frequent use of a wide array of command line tools. Fortunately, Live Share allows you as a host to optionally "share a terminal" with guests. The shared terminal can be read-only or fully collaborative, so both you and your guests can run commands and see the results. As the host, you're always in control and can decide whether other collaborators can run commands themselves or just see command output. In fact, anything you want to keep to yourself you can run in an unshared terminal.

**Learn more:** [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#share-a-terminal) [![VS](media/vs-icon-15x15.png)](use/vs.md#share-a-terminal)

#### Access controls

Visual Studio Live Share provides participants with a number of great ways to collaborate. However, with the number of options and flexibility guests are given to interact with hosts, you may want to explicitly approve guests that join or lock down access to certain files or folders. Live Share has a number of settings that can help you out including read-only and requiring acceptance of guests.

**Learn more:** [![VS Code](media/vscode-icon-15x15.png)](reference/security.md) [![VS](media/vs-icon-15x15.png)](reference/security.md)

#### Flexible connection modes

To ensure optimal performance, Visual Studio Live Share supports two core "connection modes": "direct" and "relay." In direct mode, guests connect directly to the host without going through the web. Relay mode allows guests located in a completely different network to connect to the host via an internet relay. In all cases, connections are SSH or SSL encrypted to ensure that only collaborators get access to what is going over the wire. By default, Live Share is in "auto" mode, which first attempts a direct connection and then fails over to the relay, but if you prefer, you can lock into a single mode.

**Learn more:** [![VS Code](media/vscode-icon-15x15.png)](reference/connectivity.md#changing-the-connection-mode) [![VS](media/vs-icon-15x15.png)](reference/connectivity.md#changing-the-connection-mode)

## See also

Quickstarts

- [Share your first project](quickstart/share.md)
- [Join your first session](quickstart/join.md)

How-tos

- [Collaborate using Visual Studio Code](use/vscode.md)
- [Collaborate using Visual Studio](use/vs.md)

Reference

- [Connectivity requirements for Live Share](reference/connectivity.md)
- [Security features of Live Share](reference/security.md)
- [Language and platform support](reference/platform-support.md)
- [Extension support](reference/extensions.md)
- [Release Notes](https://aka.ms/vsls-releases)

Having problems? See [troubleshooting](troubleshooting.md) or [provide feedback](support.md).
