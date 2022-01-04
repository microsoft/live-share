---
title: Share a server or terminal in a collaboration session in VS
description: Learn how to share a server or terminal as a collaboration session host in Visual Studio and Live Share.
ms.custom:
ms.date: 12/30/2021
ms.reviewer: ""
ms.suite: ""
ms.topic: "conceptual"
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

# Share a server or terminal in Visual Studio

Share a server or terminal as a collaboration session host in Visual Studio.

## Share a server

From time to time, as a collaboration session host you may find that you want to share additional local servers or services with guests. This can range from other RESTful end-points to databases or other servers. Visual Studio Live Share lets you specify a local port number, optionally give it a name, and then share it with all guests.

The guests will then be able to access the server you shared on that port from their own local machine on the exact same port. For example, if you shared a web server **running on port 3000**, the guest can access that same running web server on their **own machine** at http://localhost:3000! This is accomplished via a secure SSH or SSL tunnel between the host and guests and authenticated via the service so you can be sure that only those in the collaboration session have access.

> **Security Tip:** As a host, you should be very selective with the ports you share with guests and stick to application ports (rather than sharing a system port). For guests, shared ports will behave exactly like they would if the server/service was running on their own machine. This is very useful, but if the wrong port is shared can also be risky.

For security purposes, only servers running on ports you specify are available to other guests. Fortunately, its easy to add one as the collaboration session **host**. Here's how:

1. Click on the share/session state button in the upper right corner and select **Manage Shared Servers**.

    :::image type="content" source="../media/share-server-vs/manage-shared-local-servers-visual-studio.png" alt-text="Screenshot that shows the share session drop-down list with Manage Shared Servers selected.":::

2. In the dialog that appears, select **Add** and enter the port number the server is running on locally, enter a name, then select **OK**.

    :::image type="content" source="../media/share-server-vs/shared-server-visual-studio.png" alt-text="Screenshot that shows the Shared Local Servers window with Add and Ok selected.":::

That's it! The server on the port you specified is mapped to each guest's localhost on the same port, unless that port was already occupied.

If the port is already in use on a guest's machine, a different one is automatically selected. As a guest you can see a list of currently shared ports, by name if specified, by clicking the share/session state button in the upper right corner and selecting **View Shared Local Servers**.

![Viw Shared Local Servers](../media/vs-view-shared-servers.png)

Note that guests *can't* control which ports on the host's machine are shared for security reasons.

To stop sharing a local server, the host simply needs to click the share / session state button in the upper right corner as above, select **Manage Shared Local Servers**, and select the appropriate port, and click "Remove".

## Share a terminal

Modern development makes frequent use of a wide array of command line tools. Fortunately, Live Share allows you, as a host, to optionally "share a terminal" with guests. The shared terminal can be read-only or fully collaborative so both you and the guests can run commands and see the results. You can to give guests visibility to terminal output or let them get hands on and run tests, builds, or even triage environment specific problems that only happen on your machine.

However, terminals are **not** shared by default since they give guests at least read-only access to the output of commands you run (if not the ability to run commands themselves). This way you can freely run commands in local terminals without risk and only share when actually need to do so. In addition, only hosts can start shared terminals to prevent guests from starting one up and doing something you are not expecting or watching.

As a host, you can share a terminal by clicking on the session state / share button in the upper right hand corner and selecting one of the "Share Terminal" menu items.

![Terminal menu](../media/vs-terminal-menu.png)

At this point, you can select a read-only or read/write terminal from the menu. When the terminal is read/write, everyone can type in the terminal including the host which makes it easy to intervene if a guest is doing something you do not like. However, to be safe, you should **only give read/write access to guests when you know they actually need it** and stick with read-only terminals for scenarios where you just want the guest to see the output of any commands you run.

> [!NOTE]
> If the collaboration session is in read-only mode, only read-only terminals can be shared by the host.

Once you've selected the kind of shared terminal you want to start, a new shared terminal will appear for all participants with the correct permissions.

![Terminal install toast notification](../media/vs-terminal-install.png)

To end your terminal session, simply type exit or close the terminal window and everyone will be disconnected.

## Next Steps

Check out these additional articles for more information.

- [Quickstart: Share your first project](../quickstart/share.md)
- [Quickstart: Join your first session](../quickstart/join.md)
- [Install and sign in to Live Share in Visual Studio Code](install-live-share-visual-studio-code.md)
- [Connectivity requirements for Live Share](../reference/connectivity.md)
- [Security features of Live Share](../reference/security.md)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
