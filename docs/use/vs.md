---
title: "Using Visual Studio - Visual Studio Live Share | Microsoft Docs"
description: "A set of useful how-tos for using Visual Studio with Live Share."
ms.custom:
ms.date: 03/22/2018
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "live-share"
ms.topic: "article"
author: "chuxel"
ms.author: "clantz"
manager: "AmandaSilver"
ms.workload: 
  - "live-share"
---

<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# How-to: Use Visual Studio with Live Share

Ready to get going with Live Share in Visual Studio?  If so, you're in the right spot! In this article we'll walk you through how to use some of the specific features in the Visual Studio Live Share extension for Visual Studio.

Note that all collaboration activities in described here involve a single **collaboration session host** and one or more **guests**. The host is the person that started the collaboration session and anyone that joins is a guest.

*Looking for an abridged summary? Check out the [share](../quickstart/share.md) or [join](../quickstart/join.md) quickstarts instead.*

>**Tip:** Did you know you can *join your own collaboration session*? This allows you to try Live Share on your own or to spin up a instance of VS or VS Code and connect to it remotely! You can even use the same identity on both instances. Check it out!

## Installation

Before you begin, you'll need to install **Visual Studio 2017 (15.6 or higher)** on Windows 7, 8.1, or 10. Getting going is simple:

1. Install the latest version of <a href="https://www.visualstudio.com/vs/">Visual Studio 2017</a> (15.6+)<br/>
2. Install a supported workload. e.g. ASP.NET, .NET Core, and/or Node.js
3. [Download](https://aka.ms/vsls-dl/vs) and install the VS Live Share extension from the marketplace.

By downloading and using Visual Studio Live Share, you agree to the [license terms](https://aka.ms/vsls-license) and [privacy statement](https://www.microsoft.com/en-us/privacystatement/EnterpriseDev/default.aspx). See [troubleshooting](../troubleshooting.md) if you run into problems.

[![Download](../media/download.png)](https://aka.ms/vsls-dl/vs)

## Sign in

In order to collaborate, you'll need sign into Visual Studio Live Share so everyone knows who you are. This is purely a security measure and does not opt you into any marketing or other research activities.

If you're been accepted into the private limited preview (session hosts), **use credentials that are associated with the email you used to sign up**. These can be a Microsoft personal account (e.g. @outlook.com), Microsoft-backed work or school account (AAD), or a GitHub account. Signing in is easy.

By default Visual Studio uses the your [personalization account](https://docs.microsoft.com/en-us/visualstudio/ide/signing-in-to-visual-studio) so if you're already logged into Visual Studio, you may be able to skip this step. Otherwise sign as you would normally.

![VS sign in](../media/vs-sign-in-button.png)

If you need to use a different sign-in than your VS [personalization account](https://docs.microsoft.com/en-us/visualstudio/ide/signing-in-to-visual-studio) (e.g. you signed up for the private limited preview using a GitHub account), go to **Tools &gt; Options &gt; Live Share &gt; User account** to switch credentials.

![VS Tools Options Live Share](../media/vs-tools-options.png)

Selecting **External Account** allows you to select an account not supported by Visual Studio's personalization feature like GitHub. A browser will automatically appear the first time you use a Live Share feature so you may complete sign in.

If you signed up with an email that **is not already tied to a Microsoft personal, work, or school account or a GitHub account**, use this trick to unblock yourself:

1. Add the email as a secondary address to your GitHub profile
2. Verify it
3. Sign out of Live Share (if you've signed in) and back in again using your GitHub profile

If you run into trouble, check out [troubleshooting](../troubleshooting.md#sign-in) for more tips.

## Share a project

After downloading and installing Visual Studio Live Share, follow these steps to start a collaboration session and invite a colleague to work with you.

1. **Sign up for the preview and wait to be accepted**

    You'll need to be signed up and *accepted* into the preview to be able to share. Visual Studio users should use their [personalization account](https://docs.microsoft.com/en-us/visualstudio/ide/signing-in-to-visual-studio) credentials to sign up.

    > **Note:** _This step is only necessary in order to "share". Anyone can "join" a collaboration session as a guest. This makes it easy for folks to work together without everyone needing to explicitly sign up or be accepted into the preview._

    If you have not done so, **[sign up now!](https://aka.ms/vsls-signup)**

2. **Sign in**

    Once you've been accepted into the preview, sign into Visual Studio Live Share with the credentials you used to sign-up. See [sign in](#sign-in) for more details.

3. **Start a collaboration session**

    Open a solution, project, or folder  you want to share and simply click the "Share" button in the upper right hand corner.

    ![VS Share button](../media/vs-share-button.png)

    > **Note:** You may be asked by your desktop firewall software to allow the Live Share agent to open a port the first time you share. Accepting this is entirely optional but enables a secured "direct mode" to improve performance when the person you are working with is on the same network as you are. See [changing the connection mode](../reference/connectivity.md#changing-the-connection-mode) for details.

    An invite link will be automatically copied to your clipboard. When opened in a browser, this link allows others to join a new collaboration session that shares contents of these folders with them.

    You will also see the "Share" button / status bar icon transition to convey a "Session State". See [session state](#session-states) information below on what this looks like.

    Note that if you need to get the invite link again after you've started sharing, you access it again by clicking on the share / session state button and selecting "Copy Link".

4. **Send someone the link**

    Send the link over e-mail, Slack, Skype, etc. and once they join you can start collaborating! The person you invite will be able to download, install needed tools, and join the collaboration session without having to sign up or be accepted into the preview.

    See [join a collaboration session](#join-a-collaboration-session) for what the guest you invite can expect.

    That's it!!

### Ending the collaboration session

As a host, you can can stop sharing completely and end the collaboration session by clicking the share / session state button (in the upper right hand corner in VS or the status bar in VS Code) and selecting "End Collaboration Session". 

![Stop sharing](../media/vs-stop-sharing.png)

All guests will be notified that the session has ended. Once the session has ended, guests will no longer be able to access the content and any temp files are automatically cleaned up.

### Troubleshooting

Having issues with sharing? Check out [troubleshooting](../troubleshooting.md#share-and-join).

## Join a collaboration session

After downloading and installing Visual Studio Live Share, guests only need to take a couple steps to join a hosted collaboration session. There are two ways to join: [via the browser](#join-via-the-browser) and [manually](#join-manually).

### Join via the browser

The easiest way to join a collaboration session is to simply open the invite link in a web browser. Here's what you can expect when you follow this flow.

1. **Sign in**

    After installing the Live Share extension, want to sign in to let other collaborators know who you are. By default Visual Studio uses your personalization account you may be able to skip this step entirely.

    See [sign in](#sign-in) for more details. You **do not need to be signed up or accepted into the private limited preview** to participate in a collaboration session and will not receive email updates by simply signing into a collaboration session.

2. **Click on the invite link / open the invite in your browser**

    Simply open (or re-open) the invite link in a browser. Note: If you have not yet installed the Live Share extension, you'll be prompted to do so at this point and be presented with links to the extension marketplace. Install the extension and restart your tool and browser.

    You should be notified that your browser wants to launching a Visual Studio Live Share enabled tool. Accept this and a new window for your tool will launch and connect you to the session.

    ![Join page](../media/join-page.png)

    If the host is offline, the browser will instead telling you this is the case. You can then contact the host and ask them to share again.

    > **Note:** Still having trouble? See [join manually](#join-manually).

3. **Collaborate**

    That's it!! In a few moments you'll be connected and you can start collaborating.

    You will see the "Share" button transition to convey a "Session State". See [session state](#session-states) information below for what this looks like.

    You'll then be automatically taken to the file the host is currently editing once the join is complete.
    
### Join manually

You can also manually join without using a web link which can be useful in situations where the tool you want to use is already running, you want to use a different tool than you usually do, or if you are having trouble with getting invite links to work for some reason. The process is easy:

1. **Sign in**

    After installing the Live Share extension, reloading, and waiting for dependencies to finish installing, you'll want to sign in to let other collaborators know who you are. If you skip this step, you will asked to sign in during the join process.

    See [sign in](#sign-in) for more details. You **do not need to be signed up or accepted into the private limited preview** to participate in a collaboration session and will not receive email updates by simply signing into a collaboration session.

2. **Use the join command**

    Simply go to **File > Join Collaboration Session**

    ![VS Join menu](../media/vs-join.png)

3. **Paste the invite link**

    Paste in the invite URL you were sent and confirm.

4. **Collaborate!**

    That's it! You should be connected to the collaboration session momentarily.

    You will see the "Share" button transition to convey a "Session State". See [session state](#session-states) information below for what this looks like.

    You'll then be automatically taken to where the host is currently editing once the join has completed.

### Leave the collaboration session

As a guest, you can leave the collaboration session without ending it for others by simply closing the tool or by clicking the share / session state button and selecting "Leave Collaboration Session".

![VS Join menu](../media/vs-leave-session.png)

Any temp files are automatically cleaned up so no further action is needed.

### Troubleshooting

Having issues with sharing? Check out [troubleshooting](../troubleshooting.md#share-and-join).

## Co-editing

Once a guest has joined a collaboration session, the host other guests will immediately be able to see each others edits and highlights in real-time. Simply select a file from the Solution Explorer and start editing. All participants  will see edits as the host or other guests make them and can contribute themselves in real time so you can iterate and rapidly nail to down solutions.

![Screen shot showing co-editing](../media/vs-coedit.png)

In addition, each guest can navigate to any file in the shared project. This means you can edit together in the same file or independently in separate files and thus seamlessly switch between investigation, small tweaks, and collaborative editing. The resulting edits are persisted on the host's machine so there is no need to synchronize, push, or send files around once you're done editing. The edits are "just there."

Further, to better allow you to highlight where problems might exist or convey ideas, selections are also visible to all guests.

![Screen shot showing highlighting](../media/vs-highlight.png)

### Moving to another person's edit location

Each person in your the session can be seen in the upper right and you can hover over the avatar to see their full information.  Further, simply clicking on this same icon to jumps the active editor to their exact location.

![Screen shot showing user](../media/vs-person.png)

### Follow a collaborator via pinning

At times the person you are collaborating with may need to show you a few different places in code to explain a problem or possible solution. While you could repeatedly jump to their location as described above you can also "pin" the editor to their location.

Simply hover over a user and you will see a pin icon. Simply click the pin to start following them and as the collaborator moves around or between files you will be moved along with them.

<table style="border: none;">
<tr style="border: none;">
    <td width="50%" style="vertical-align: top; border: none;">
        <img src="../media/vs-pin-hover.png" width="100%" />
    </td>
    <td width="50%" style="vertical-align: top; border: none;">
        <img src="../media/vs-pinned.png" width="100%" />
    </td>
</tr>
</table>

To make it easy to hop in and out of pinning, the editor is un-pinned if any of the following occurs:

1. You edit, move your cursor, or make a selection
2. You select another file
3. You click the pin icon again

Afterwards you can simply click the pin icon again to follow their location once again.

### Changing participant flag behaviors

By default, Visual Studio Live Share automatically displays a "flag" next to a participant's cursor on hover, or when they edit, highlight, or move their cursor. In some cases you may prefer to change this behavior.

1. Go to **Tools > Options > Live Share**
2. Change the **Flag visibility** option to one of the following:

| Option | Behavior |
|--------|----------|
| OnHoverOnly | The flag is only visible when you hover over the cursor. |
| OnHoverOrActivity | This is the default. The flag is visible on hover or if the participant edits, highlights, or moves their cursor. |
| Always | The flag is always visible.

## Co-debuging

Visual Studio Live Share's collaborative debugging feature is a powerful and unique way to debug an issue. Beyond enabling a collaborative experience to troubleshoot problems it also gives all collaborators the ability to investigate issues that may be environment specific by providing a shared debugging session on the host's machine.

> **Note:** All traffic is secured and encrypted and access is limited to only those resources needed to facilitate debug and browser access to the web application. These resources are only available to guests of the collaboration session.

Using it simple. The collaboration session host simply needs to start debugging via the usual means in Visual Studio.

![VS Debug button](../media/vs-debug-button.png)

Once the debugger attaches on the host's side, all guests are also attached. While there is one debugging "session" running on the host's machine, all collaborators are connected to it and have their own view.

> **Tip:** If you want to change when and how co-debugging happens, you can change the default behaviors via settings in **Tools > Options > Live Share**.

![VS debugger attached](../media/vs-debugger.png)

Anyone can step through the debugging process which enables seamless switching between collaborators without having to negotiate control.

Each collaborator can investigate different variables, jump to different files in the call stack, variables, and breakpoints are shared across all guests and can be added by anyone. Co-editing features then allow each collaborator to track where the other is located to provide the unique ability to seamlessly switch between concurrently investigating different aspects of the problem and collaboratively debugging.

> **Tip:** You can participate in VS Code debugging sessions from VS and vice versa! If the host is using VS Code, you can check out the [VS Code instructions](vscode.md#co-debuging) but the steps are roughly the same.

### Automatic web app sharing

Even better, for ASP.NET Web App projects, by default if the host's project is configured to automatically start a web browser to connect to the running web application when debugging, Live Share will automatically do the same on each guest's machine!  This is done in a secure way and the remote web application is only available to the guests during the debugging session by default.  

See [share a local server](#share-a-local-server) for information on how to share server access for other project types and/or for the duration of the session.

> **Tip:** If you don't like the automated browser sharing behavior and want to change it (either when you are an host or a guest), you can update settings in **Tools > Options > Live Share**.

![Animation of concurrent debugging](../media/co-debug.gif)

### Detaching and reattaching

As a guest, you may wish to stop debugging temporarily. Fortunatley, you can simply click the "stop" icon in the debug toolbar to detatch the debugger without affecting the host or other guests.

If you've updated settings so that as a guest you do not auto-attach to a co-debugging session or if you simply want to re-attach later, you can simply select the desired running debugging session from the "Select Startup Item..." dropdown...

![VS Debug button](../media/vs-select-reattach.png)

...and then click it to attach.

![VS Debug button](../media/vs-reattach.png)

### Change when VS joins debugging sessions

By default as a guest, you'll be automatically attached to debugging sessions when they are shared by the host. However, in some cases you may find this behavior disruptive.  Fortunately, you can change it as follows:

1. Go to **Tools > Options > Live Share**
2. Change the **Join debug session option** to one of the following:

| Option | Behavior |
|--------|----------|
| Automatic | The default. As a guest, you'll automatically join any shared debugging session the host starts. |
| Prompted | As a guest, you are prompted as to whether you want to join a shared debugging session when it is started by the host. |
| Manual | As a guest, you'll need to manually join any  debugging sessions. See [detaching and reattaching](#detaching-and-reattaching).|

## Share a local server

From time to time, as a collaboration session host you may find that you want to share additional local servers or services with guests. This can range from other RESTful end-points to databases or other servers. Visual Studio Live Share lets you specify a local port number, optionally give it a name, and then share it with all guests.

The guests will then be able to access the server you shared on that port from their own local machine on the exact same port. For example, if you shared a web server running on port 3000, the guest can access that same running web server on their own machine at http://localhost:3000! This is accomplished via a secure SSH or SSL tunnel between the host and guests and authenticated via the service so you can be sure that only those in the collaboration session have access.

For security purposes, only servers running on ports you specify are available to other guests. Fortunately, its easy to add one as the collaboration session **host**. Here's how:


1. Click on the session state button in the upper right corner and select "Manage Shared Local Servers"

    ![Manage Shared Local Servers](../media/vs-share-local-servers.png)

2. In the dialog that appears, click "Add" and enter the port number the server is running on locally and a name, hit enter, then OK.

    ![Manage Shared Local Servers](../media/vs-manage-local-shared-servers.png)

That's it! The server on the port you specified will now be mapped to each guest's localhost on the same port (unless that port was already occupied)!

If the port is already in use on a guest's machine, a different one is automatically selected. Fortunately, as a guest you can see a list of currently shared ports (by name if specified) by clicking the session state button in the upper right corner and selecting "View Shared Local Servers."

![Viw Shared Local Servers](../media/vs-view-shared-servers.png)

Note that *guests cannot* control which ports on the host's machine are shared for security reasons.

To **stop** sharing a local server, the host simply needs to hare state button in the upper right corner as above, select "Manage Shared Local Servers", and select the appropriate port, and click "Remove".

## Session states

After you have started or joined collaboration session and have access to shared content, the "Share" button in the upper right hand corner updates its appearance to reflect the state of the active collaboration session.

The following are the states you will typically see:

| State | Button | Description |
|-------|--------|-------------|
| Inactive | ![VS status: inactive](../media/vs-status-share.png) | No active collaboration session and nothing is shared. |
| Host: Sharing In-Progress | ![VS status: share in progress](../media/vs-status-sharing.png) | A collaboration session is starting and content sharing will begin shortly. |
| Host: Sharing | ![VS status: sharing active ](../media/vs-status-active.png) | A collaboration session is active and content is shared. |
| Guest: Joining Session | ![VS Code status: joining](../media/vs-status-joining.png) | Joining an existing collaboration session. |
| Guest: Joined | ![VS status: joined](../media/vs-status-joined.png) | Joined and connected to an active collaboration session and receiving shared content. |

## Guest limitations

While there are currently some shortcomings guests will experience while using the features described above, collaboration session hosts retain the complete functionality of their tool of choice. See the following for more information:

- [Language and platform support](../reference/platform-support.md)
- [Extension support](../reference/extensions.md)
- [All major bugs, feature requests, and limitations](https://aka.ms/vsls-issues)
- [All feature requests and limitations](https://aka.ms/vsls-feature-requests)
- [Troubleshooting](../troubleshooting.md)

## Next Steps

Check out these additional articles for more information.

- [Quickstart: Share your first project](../quickstart/share.md)
- [Quickstart: Join your first session](../quickstart/join.md)
- [How-to: Use Visual Studio Code with Live Share](vscode.md)
- [How-to: Provide feedback](../support.md)

Reference

- [Language and platform support](../reference/platform-support.md)
- [Extension support](../reference/extensions.md)

Having problems? See [Troubleshooting](../troubleshooting.md).
