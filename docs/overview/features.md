---
title: "Live Share features"
description: "An overview of Visual Studio Live Share and its capabilities."
ms.custom:
ms.date: 07/16/2021
ms.reviewer: ""
ms.suite: ""
ms.topic: "overview"
author: "fubaduba"
ms.author: "fishah"
manager: "AmandaSilver"
ms.workload: 
  - "liveshare"
---

<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->
# Live Share features and concepts 

Live Share is built using revolutionary architecture and concepts that manifest as powerful features for our users. Below you will find all the distinguishing features of Live Share and what makes it a leader in the collaboration space. 

### Collaboration sessions

All collaboration activities in Visual Studio Live Share involve a single **collaboration session host** and one or more **guests**. The host is the person who started the collaboration session and anyone that joins is a guest.

Collaboration session hosts can use all of their tools and services but guests are only given access to the specific things the host has shared with them. This includes code, running servers, debugging sessions, terminals and more. Currently all content that is shared is kept on the host's machine and not synchronized to the cloud or on the guest's machine which enables _instant access_ and _increased security_. The advantage is that the entire solution is available the moment a guest joins, and the moment a host ends a collaboration session, the content is no longer available. Further, temp files created by the IDE/editor to improve performance for the guest are automatically cleaned up when the session ends.

#### Sharing

When you "share" as a host, you start up a collaboration session that shares the contents of a project, solution, or a folder. Guests get access to this content using the invitation link that you send them. While "share" is shorthand for "share a project," it also opens the door for sharing other capabilities like debugging.

**Learn more:** [![VS Code](../media/vscode-icon-15x15.png)](../use/vscode.md#start-and-stop-a-session) [![VS](../media/vs-icon-15x15.png)](../use/vs.md#share-a-project)

#### Joining

Clicking an invitation link sent to you by a host allows you to "join" a collaboration session as a guest and access any content or capabilities the host has opted to share with you. The web link provides a quick way to hop into a collaboration session if you already have the extension installed, and a quick way to set up information if you do not.

**Learn more:** [![VS Code](../media/vscode-icon-15x15.png)](../use/vscode.md#join-and-leave-a-session) [![VS](../media/vs-icon-15x15.png)](../use/vs.md#join-a-collaboration-session)

### Features

#### Co-editing

When you open the same file as another collaborator, you are instantly able to "collaboratively edit" or "co-edit" the file's contents. You can see each collaborator's edits, their cursors and selections, and more. Even better, you are not forced into editing the same file at all times so you can opportunistically collaborate and act independently as you see fit.

> [!NOTE]
> Co-editing has a few limitations. See [platform support](../reference/platform-support.md) for the state of features by language.

**Learn more:** [![VS Code](../media/vscode-icon-15x15.png)](../use/vscode.md#co-editing) [![VS](../media/vs-icon-15x15.png)](../use/vs.md#co-editing)

#### Following and focusing

Sometimes you need to explain a problem or design that spans multiple files or locations in code. In these situations, it can be useful to temporarily follow a colleague as they move throughout the project when co-editing. For this reason, as a guest, when you join a collaboration session you automatically "follow" the host's edit location. Hosts and guests can hop in and out of following one another with a simple mouse click. In addition, you may find that you want to ask all participants to follow you. Live Share lets you request that everyone "focus" their attention on you with a notification that makes it easy for them to follow you back.

**Learn more:** [![VS Code](../media/vscode-icon-15x15.png)](../use/vscode.md#follow-along-with-a-collaborator) [![VS](../media/vs-icon-15x15.png)](../use/vs.md#following)

#### Co-debugging

When you're debugging tough coding problems or bugs, having an extra pair of eyes can be really useful. As a host, Live Share automatically enables "collaborative debugging" or "co-debugging" by sharing the debugging session with all guests. You each get co-editing features along with the ability to investigate independently as you step through together.

> [!NOTE]
> See [platform support](../reference/platform-support.md) for the state of debugging features by language or platform.

**Learn more:** [![VS Code](../media/vscode-icon-15x15.png)](../use/vscode.md#co-debugging) [![VS](../media/vs-icon-15x15.png)](../use/vs.md#co-debugging)

#### Share server / Share port

When co-debugging, it can be really useful to get access to different parts of the application being served up by the host for the debugging session. You  may want to access the app in a browser, access a local database, or hit a REST endpoint from your tools. Live Share lets you "share a server", which maps a local port on the host's machine to the exact same port on each guest's machine. As a guest, you can then interact with the application exactly as if it was running locally on your machine (for example, the host and guest can both access a web app running on http://localhost:3000).

**Learn more:** [![VS Code](../media/vscode-icon-15x15.png)](../use/vscode.md#share-servers-or-terminals) [![VS](../media/vs-icon-15x15.png)](../use/vs.md#share-a-server)

#### Share terminals

Modern development makes frequent use of a wide array of command line tools. Fortunately, Live Share allows you as a host to optionally "share a terminal" with guests. The shared terminal can be read-only or fully collaborative, so both you and your guests can run commands and see the results. As the host, you're always in control and can decide whether other collaborators can run commands themselves or just see command output. In fact, anything you want to keep to yourself you can run in an unshared terminal.

**Learn more:** [![VS Code](../media/vscode-icon-15x15.png)](../use/vscode.md#share-servers-or-terminals) [![VS](../media/vs-icon-15x15.png)](../use/vs.md#share-a-terminal)

#### Access controls

Visual Studio Live Share provides participants with a number of great ways to collaborate. However, with the number of options and flexibility guests are given to interact with hosts, you may want to explicitly approve guests that join or lock down access to certain files or folders. Live Share has a number of settings that can help you out including read-only and requiring acceptance of guests.

**Learn more:** [![VS Code](../media/vscode-icon-15x15.png)](../reference/security.md) [![VS](../media/vs-icon-15x15.png)](../reference/security.md)

#### Flexible connection modes

To ensure optimal performance, Visual Studio Live Share supports two core "connection modes": "direct" and "relay." In direct mode, guests connect directly to the host without going through the web. Relay mode allows guests located in a completely different network to connect to the host via an internet relay. In all cases, connections are SSH or SSL encrypted to ensure that only collaborators get access to what is going over the wire. By default, Live Share is in "auto" mode, which first attempts a direct connection and then fails over to the relay, but if you prefer, you can lock into a single mode.

**Learn more:** [![VS Code](../media/vscode-icon-15x15.png)](../reference/connectivity.md#changing-the-connection-mode) [![VS](../media/vs-icon-15x15.png)](../reference/connectivity.md#changing-the-connection-mode)
