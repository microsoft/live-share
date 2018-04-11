---
title: "Overview - Visual Studio Live Share | Microsoft Docs"
description: "An overview of Visual Studio Live Share and its capabilities."
ms.custom:
ms.date: 03/22/2018
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

# Visual Studio Live Share

Welcome to Visual Studio Live Share! Live Share lets you to achieve greater confidence at speed by streamlining collaborative editing, debugging, and more in real-time during development. You get real-time sharing in tools you love, can share the full context of your code, collaboratively edit while still navigating files independently, securely share local servers, and even collaboratively debug while still retaining the ability to inspect on your own.

Ready to get going? In this article we'll run you through some concepts and how to install Visual Studio Live Share. If you're looking for an abridged version, check out the [share](quickstart/share.md) and [join](quickstart/join.md) quickstarts.

>**Tip:** Did you know you can *join your own collaboration session*? This allows you to try Live Share on your own or to spin up a instance of VS or VS Code and connect to it remotely! You can even use the same identity on both instances. Check it out!

## Install Visual Studio Live Share

Before you begin, you'll need to be sure you've got a version of Visual Studio or Visual Studio Code installed that meets Live Share's core requirements.

- **Visual Studio 2017 (15.6 or higher)** - The latest update of Visual Studio 2017 (any edition) on Windows 7, 8.1, or 10.
- **Visual Studio Code (1.20.0 or higher)** - Windows 7, 8.1, or 10, macOS *Sierra (10.12) and above only*.

After that, downloading and installing the Visual Studio Live Share extension is a breeze:

<table style="width: 100%; border:none;">
<tr>
    <td width="128px" style="width: 128px; text-align: center; border:none;"><img src="media/vs-ide.svg" width="128px" alt="Visual Studio logo" /></td>
    <td  style="border:none;">
        <strong>Visual Studio 2017 15.6 or higher</strong><br />
       1. Install the latest version of <a href="https://www.visualstudio.com/vs/">VS 2017</a> (15.6+) on Windows (7, 8.1, or 10).<br/>
       2. Install a supported workload. e.g. ASP.NET, .NET Core, and/or Node.js<br />
       3. Download and install the VS Live Share extension from the marketplace. <br />
       <a href="https://aka.ms/vsls-dl/vs"><img style="padding: 0; spacing: 0;" src="media/download.png" alt="Download button" ></a><br />
    </td>
</tr>
<tr style="border:none;">
    <td width="128px" style="width: 128px; text-align: center; border:none;"><img src="media/vs-code.svg" width="128px" alt="Visual Studio Code logo"/></td>
    <td style="border:none;">
        <strong>Visual Studio Code</strong><br />
        1. Install <a href="https://code.visualstudio.com/">Visual Studio Code</a> for Windows (7, 8.1, or 10), macOS <b>(Sierra+)</b><br />
        2. Download and install the VS Live Share extension from the marketplace. <br />
        3. Reload and wait for dependencies to download and install (see status bar).<br />
        <a href="https://aka.ms/vsls-dl/vscode"><img src="media/download.png" alt="Download button"></a>
    </td>
</tr>
</table>

By downloading and using Visual Studio Live Share, you agree to the [license terms](https://aka.ms/vsls-license) and [privacy statement](https://www.microsoft.com/en-us/privacystatement/EnterpriseDev/default.aspx). See [troubleshooting](troubleshooting.md) if you run into problems.

That's all there is to it! You should now see a sign in status bar on the left in VS Code and a share button in the upper left in Visual Studio. Check out the rest of the documentation for what to do next!

## Concepts and features

As with any product, Visual Studio Live Share provides a set of powerful built up from some core concepts. We'll also be using some  some short hand terms for features that we'll summarize briefly.

### Collaboration sessions

All collaboration activities in Visual Studio Live Share involve a single **collaboration session host** and one or more **guests**. The host is the person that started the collaboration session and anyone that joins is a guest.

Collaboration session hosts can use all of their tools and services as they would normally but guests are only given access to the specific things the host has shared with them. This includes code, running servers, debugging sessions and more.  Currently all content that is shared is kept on the host's machine and not synchronized to the cloud or on the guest's machine which enables _instant access_ and _increased security_.  The advantage is that the entire solution is available the moment a guest joins and the moment a host ends a collaboration session the content is no longer available. Further, temp files created by the IDE/editor to improve performance for the guest are automatically cleaned up when the session ends.

#### Sharing

When you "share" as a host, you start up a collaboration session that shares the contents of a project, solution, or a folder that guests can then access through an invitation link. While "share" is short hand for "share a project," it also opens the door for sharing other capabilities like debugging.

Learn more: [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#share-a-project) [![VS](media/vs-icon-15x15.png)](use/vs.md#share-a-project)

#### Joining

Clicking an invitation link from a host enables you to "join" a collaboration session and access any content or capabilities the host has opted to share with you. It provides a quick way hop into a collaboration session and the web link provides getting started information for you if you don't have the needed extension installed.

Learn more: [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#join-a-collaboration-session) [![VS](media/vs-icon-15x15.png)](use/vs.md#join-a-collaboration-session)

### Features

#### Co-editing

When you open the same file as another collaborator, you are instantly able to "collaboratively edit" or "co-edit" the file's contents. You can see each collaborator's edits, their cursors and selections, jump-to their location, and more. Even better, you are not forced into editing the same file at all times so you can opportunistically collaborate and act independently as you see fit.

Learn more: [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#co-editing) [![VS](media/vs-icon-15x15.png)](use/vs.md#co-editing)

#### Pin-to and follow mode

Sometimes you need to explain a design or problem that spans multiple files or locations in code. Consequently, it is useful to be able to temporarily follow a colleague as they move throughout the project when co-editing. Visual Studio Live Share allows you to do this by "pinning" your editor to another collaborator.

Learn more: [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#follow-a-collaborator-via-pinning) [![VS](media/vs-icon-15x15.png)](use/vs.md#follow-a-collaborator-via-pinning)

#### Co-debugging

When you're tackling tough coding problems or bugs, having an extra pair of eyes when debugging can be really useful. Visual Studio Live Share enables "collaborative debugging" or "co-debugging" by sharing the debugging session with all guests whenever the host starts debugging. You get co-editing features along with the ability to investigate independently as you step through together.

Learn more: [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#co-debuging) [![VS](media/vs-icon-15x15.png)](use/vs.md#co-debuging)

#### Share local servers / Share ports

When co-debugging, it can be really useful to get access to different parts of the application being served up by the host for the debugging session. You  may want to access the app in a browser, access a local database, or hit a REST endpoint from your tools. Live Share lets you "share a local server" which maps a local port on the host's machine to the exact same port on guest's machine. As a guest, you can then interact with the application exactly as if it was running locally on your machine (e.g. the host and guest can both access a web app running on http://localhost:3000).

Learn more: [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#share-a-local-server) [![VS](media/vs-icon-15x15.png)](use/vs.md#share-a-local-server)
<!--
#### Share a terminal

Modern development makes frequent use of an array of command line tools. Fortunately, Live Share allows you as a host to optionally "share a terminal" with guests. The shared terminal is fully collaborative so both you and the guests can run commands and see the results. As the host, you're able to allow other collaborators to use any number of command line tools to run tests, builds, or even triage environment specific problems. Since the terminal is only accessible to collaborators in the session and you can see exactly what everyone is doing, you'll be able to gain additional insights while still being confident that only those you trust have access. 

Learn more: [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#share-a-terminal) [![VS](/vs-icon-15x15.png)](use/vs.md#share-a-terminal)
-->

#### Flexible connection modes

To ensure optimal performance, Visual Studio Live Share supports two core "connection modes": "direct" and "relay." In direct mode, guests connect directly to the host without going through the web. Relay mode allows guests located in a completely different network to connect to the host via an internet relay. In all cases connections are SSH or SSL encrypted to ensure only collaborators get access to what is going over the wire. By default, Live Share is in "auto" mode which first attempts a direct connection and then fails over to the relay but if you prefer, you can lock into a single mode.

Learn more: [![VS Code](media/vscode-icon-15x15.png)](reference/connectivity.md#changing-the-connection-mode) [![VS](media/vs-icon-15x15.png)](reference/connectivity.md#changing-the-connection-mode)

#### Scoped command menu

Sometimes searching the command palette in VS Code can be a bit overwhelming. Live Share has a "scoped command menu" that you can access by clicking on the sign in status bar item. You'll be automatically presented list of commands that are available given the current state of your collaboration session so you can get up and running quickly.

Learn more: [![VS Code](media/vscode-icon-15x15.png)](use/vscode.md#using-the-scoped-command-menu)

## See also

Quickstarts

- [Share your first project](quickstart/share.md)
- [Join your first session](quickstart/join.md)

How-tos

- [Collaborate using Visual Studio Code](use/vscode.md)
- [Collaborate using Visual Studio](use/vs.md)

Reference

- [Connectivity requirements for Live Share](reference/connectivity.md)
- [Language and platform support](reference/platform-support.md)
- [Extension support](reference/extensions.md)
- [Release Notes](reference/releases.md)

Having problems? See [troubleshooting](troubleshooting.md) or [provide feedback](support.md).
