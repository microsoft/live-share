---
title: "Use Live Share to collaborate in Visual Studio Code"
titleSuffix: ""
description: "Enable and create a collaboration session in Visual Studio Code by using Visual Studio Live Share."
ms.custom:
ms.date: 07/16/2021
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

# Use Live Share to better collaborate in Visual Studio Code

Ready to start collaborating with Live Share in Visual Studio Code? In this article, we'll walk you through how to set up a collaboration session in Visual Studio Code by using the Live Share Extension.

Note that all collaboration activities described here involve a single collaboration session host and one or more guests. The host is the person who started the collaboration session, and anyone that joins is a guest.

*Looking for an abridged summary? Check out the [share](../quickstart/share.md) or [join](../quickstart/join.md) quickstarts.*

> [!TIP]
> Did you know that you can join your own collaboration session? Doing so allows you to try Live Share on your own or to spin up an instance of Visual Studio or Visual Studio Code and connect to it remotely. You can even use the same identity in both instances. Check it out!

## Prerequisites

Before you start, you'll need a supported version of Visual Studio Code for the Live Share core requirements. 

You'll need Visual Studio Code (1.22.0 or later) running on one of the following operating systems:

- **Windows**: 7, 8.1, or 10.

- **macOS**: Sierra (10.12) and later. Because of [.NET Core 2.0 requirements](https://go.microsoft.com/fwlink/?linkid=872315), El Capitan (10.11) and earlier aren't currently supported.

- **Linux**: 64-bit Ubuntu Desktop 16.04 and later, Fedora Workstation 27 and later, or CentOS 7.
    - Live Share requires a number of [prerequisites for Linux](#linux-installation-steps). You might be prompted to install these items.
    - Because of [.NET Core 2.0 requirements](https://go.microsoft.com/fwlink/?linkid=872314), 32-bit Linux isn't supported.
    - ARM is currently not supported.
    - See [Linux installation details](../reference/linux.md) for information on using downstream distributions and other distributions.

## Install the Live Share Extension Pack

When you download and use Visual Studio Live Share, you agree to the [license terms](https://aka.ms/vsls-license) and [privacy statement](https://www.microsoft.com/en-us/privacystatement/EnterpriseDev/default.aspx). See [troubleshooting](../troubleshooting.md) if you run into problems.

1. Install <a href="https://code.visualstudio.com/">Visual Studio Code</a>.
2. [Download](https://aka.ms/vsls-dl/vscode) and install the Visual Studio Live Share Extension Pack from Marketplace.
3. Reload Visual Studio Code.
4. Wait for dependencies to download and install. (See the status bar.)<br/>
    ![Screenshot that shows the status bar during download.](../media/vscode-finishing-install.png)
5. *Linux only*: If you see a notification about installing missing libraries:
    1. Select **Install** in the notification.
    2. Enter your admin (sudo) password when prompted.
    3. Restart Visual Studio Code when the installation is done.

[![Button to download Live Share.](../media/download.png)](https://aka.ms/vsls-dl/vscode)

### Linux installation steps

Linux is a highly variable environment. Given the number of desktop environments and distributions, getting Live Share installed can be complicated. If you use supported versions of Ubuntu Desktop (16.04+), Fedora Workstation (27+), or CentOS 7 and only use official distributions of Visual Studio Code, the process should be straightforward. If you're using a nonstandard configuration or downstream distribution, you might encounter complications. See [Linux installation details](../reference/linux.md) for more information.

#### Install Linux prerequisites

Some distributions of Linux are missing libraries that Live Share needs. By default, Live Share attempts to detect and install Linux prerequisites. You'll see a notification prompting you to install libraries when Live Share encounters a problem that can be caused by missing libraries:

![Screenshot of notification for missing Linux libraries.](../media/vscode-linux-prereq-missing.png)

When you select **Install**, a terminal window will open. Enter your admin (sudo) password to continue. If the install completes successfully, restart Visual Studio Code. You should be all set. You might also want to check out [Tips by distribution](../reference/linux.md#tips-by-distribution) for other hints and workarounds.

If you see a message stating that the script doesn't support your distribution, see [Tips for community-supported distributions](../reference/linux.md#tips-for-community-supported-distros) for information the community has shared with us.

If you don't want Visual Studio Code to run the command for you, you can also re-run the latest version of this script at any time by running this command from a terminal window:

```
wget -O ~/vsls-reqs https://aka.ms/vsls-linux-prereq-script && chmod +x ~/vsls-reqs && ~/vsls-reqs
```

#### Linux browser integration

Visual Studio Live Share doesn't typically require additional installation steps to enable browser integration on Linux.

On certain rare distributions, you might be notified that your admin (sudo) password is required to complete the installation. A terminal window noting where the browser launcher will be installed will appear. Enter your password when prompted, and select **Enter** when the installation completes to close the terminal window.

For information about why the password is required and where Live Share puts files, see [Linux browser integration](../reference/linux.md#linux-browser-integration). If you can't get browser integration to work, you can still [join collaboration sessions manually](../use/vscode.md#join-manually).

## Sign in to Live Share

To collaborate, you'll need to sign in to Visual Studio Live Share so everyone knows who you are. This is a security measure and doesn't add you to marketing activities or other research activities. You can sign in by using a Microsoft personal account (for example, @outlook.com), a Microsoft-backed work or school account (Azure Active Directory), or a GitHub account. Signing in is easy.

Select **Live Share** on the status bar or select **Ctrl+Shift+P** or **Cmd+Shift+P** and then select **Live Share: Sign In With Browser**.

![Screenshot that shows the Visual Studio Code sign in button.](../media/vscode-sign-in-button.png)

A notification will prompt you to sign in by using your web browser. When you select **launch sign in**, a browser will open so you can complete the sign-in process. Simply close the browser when you're done.

![Screenshot that shows notification prompting web browser sign-in.](../media/vscode-sign-in-toast.png)

> [!note]
> Linux users: You might be prompted to enter a user code if you're using an older version of Live Share (0.3.295 or earlier). Update to the latest version of the extension or, to see the code, select **Having trouble?** after you sign in. For deteails, see [Sign in by using a user code](#sign-in-by-using-a-user-code).


> **Advanced tip:** The `liveshare.account` and `liveshare.accountProvider` settings enable you to select the account used for automatic sign-in if you have cached credentials for multiple accounts.
> For example, imagine you work on two projects and you want to sign in to them by using different identities. In your Visual Studio Code workspace settings, you could set `liveshare.account` to a different email address in each project directory. The projects will then automatically sign in with the correct account. You can set the `liveshare.accountProvider` setting to either `"microsoft"` or `"github"` if you use the same email address with multiple providers.

If Visual Studio Code isn't picking up your sign-in after you complete the sign-in process in the browser, see [sign in by using a user code](#sign-in-by-using-a-user-code). Or check out [troubleshooting](../troubleshooting.md#sign-in) for more tips.

### Sign in by using a user code

If Visual Studio Code isn't picking up a completed sign-in, you can enter a *user code* instead.

1. Select **Ctrl+Shift+P** or **Cmd+Shift+P** and then run the **Live Share: Sign in with user code** command.

2. A browser should open. Use it to complete the sign-in process:

    > [!NOTE]
    > If a browser doesn't open automatically, go to https://insiders.liveshare.vsengsaas.visualstudio.com/auth/login and sign in.

3. After you're done, select **Having trouble? Click here for user code directions** to see the user code.

    ![Screenshot that shows a user code in a browser window.](../media/vscode-user-code-browser.png)

4. Copy the user code.

5. Paste the user code into the input field that appeared when you ran the command. Press enter to complete the sign-in process.

    ![Screenshot that shows the user code input box.](../media/vscode-user-code.png)

## Find Live Share commands

### In the Live Share viewlet

After you install Visual Studio Live Share, a custom tab will appear in the Visual Studio Code Activity Bar. On this tab, you can access all Live Share functions to collaborate. When you share or join a collaboration session, a view will also appear on the **Explorer** tab that allows you to access these functions.

<table>
<tr>
    <td width="50%">
        <img src="../media/vscode-custom-tab.png" width="100%" alt="Screenshot that shows the Live Share tab in Visual Studio Code.">
    </td>
    <td width="50%">
        <img src="../media/vscode-explorer-view.png" width="100%" alt="Screenshot that shows the Explorer tab in Visual Studio Code.">
</tr>
</table>

By using these views, you can see a participant's location in the shared code, select participants to follow them, focus participants, access shared servers and terminals, and more.

### In the scoped command menu

All Visual Studio Live Share functions are also available from the Visual Studio Code Command Palette. You can access the Command Palette by selecting **Ctrl+Shift+P** / **Cmd+Shift+P** or **F1**. You can find a complete list of commands by entering **live share**.

Because this list can be long, it might be easier to use a scoped command menu from the status bar. Selecting the sign in / session state icon on the status bar will bring up a contextualized list of commands that are available for use:

![Screenshot that shows the Visual Studio Code session state icon.](../media/vscode-share-state.png)

## Start and stop a session

After you download and install Visual Studio Live Share, follow these steps to start a collaboration session and invite a colleague to work with you.

1. **Sign in**

    After you install the Live Share Extension, reload, and wait for dependencies to install, sign in to let other collaborators know who you are. See [Sign in](#sign-in-to-live-share) for more details.

2. **Open a folder**

    Use your normal workflow to open a folder, project, or solution that you want to share with your guests.

3. **[Optional] Update hidden or excluded files**

    By default, Live Share hides from your guests any files and folders referenced in .gitignore files in your shared folders. *Hiding* a file prevents it from appearing in the guest's file tree. *Excluding* a file applies a stricter rule. Excluding a file will prevent Live Share from opening it for a guest in situations like **Go to Definition** or if you step into a file while debugging or being "followed." To hide or exclude files, you add add a .vsls.json file with appropriate settings to your project. For more information, see [controlling file access and visibility](../reference/security.md#controlling-file-access-and-visibility).

4. **Start a collaboration session**

    To start a session, select **Live Share** on the status bar or select **Ctrl+Shift+P** or **Cmd+Shift+P** and then select **Live Share: Start a collaboration session (Share)**.

    ![Screenshot that shows the Live Share button.](../media/vscode-share-button-new.png)

    > [!NOTE]
    > The first time you share, your desktop firewall software might prompt you to allow the Live Share agent to open a port. Opening a port is optional. It enables a secured direct mode to improve performance when the person you're working with is on the same network as you. See [changing the connection mode](../reference/connectivity.md#changing-the-connection-mode) for details.

    An invitation link will be automatically copied to your clipboard. When opened in a browser, the link allows others to join a new collaboration session that shares the contents of the folders.

    You'll also see the **Live Share** status bar item change to represent the session state. To see what it will look like, see the [session state](#session-states-and-limitations) information later in this article.

    If you need to get the invitation link again after you've started sharing, you can get it by selecting the session state status bar item and then selecting **Invite Others (Copy Link)**.

5. **[Optional] Enable read-only mode**

    After you start your collaboration session, you can set the session to be read-only to prevent guests from making edits to the code you're sharing.

    After you share, you'll get a notification that the invitation link is copied to your clipboard. You can then select the option to make the session read-only:

    ![Screenshot that shows the Make read-only button.](../media/vscode-read-only-toast.png)

6. **Send someone the link**

    Send the link over e-mail, Slack, Skype, or other platforms to the guests you want to invite. Given the level of access Live Share sessions can provide to guests, *you should only share with people you trust*, and you should think through the implications of what you're sharing.

    > **Security tip:** Want to understand the security implications of some Live Share features? Check out the [security](../reference/security.md) article.

    The guests you invite might have questions. The "[Quickstart: Join your first session](../quickstart/join.md)" article provides information on getting started as a guest.

7. **[Optional] Approve the guest**

    By default, guests will automatically join your collaboration session and you'll be notified when they're ready to work with you. This notification gives you the option to remove them from the session. You can also choose to require explicit approval for anyone joining.

    To enable this approval, add the following to settings.json:

    ```json
    "liveshare.guestApprovalRequired": true
    ```

    When you have this setting turned on, a notification will prompt you to approve guests before they can join:

    ![Screenshot that shows a Visual Studio Code join approval request.](../media/vscode-join-approval.png)

    See [Invitations and join access](../reference/security.md#invitations-and-join-access) for more information on invitation security considerations.

That's it!

### Stop the collaboration session

As a host, you can stop sharing completely and end the collaboration session at any time. To do so, open the Live Share view on the **Explorer** tab or the **Live Share** tab and select the **Stop collaboration session** button:

![Screenshot that shows the Stop collaboration session button.](../media/vscode-end-collaboration-viewlet.png)

All guests will be notified that the session is over. After the session is over, guests won't be able to access the content. Any temp files will automatically be cleaned up.

Having problems with sharing? Check out [troubleshooting](../troubleshooting.md#share-and-join).

## Join and leave a session

After they download and install Visual Studio Live Share, guests need to take only a couple steps to join a hosted collaboration session. There are two ways to join: [via a browser](#join-via-a-browser) and [manually](#join-manually).

> **Security tip:** Guests joining a collaboration session need to understand that hosts might restrict their access to certain files or features. Want to understand the security implications of Live Share features and settings? Check out the [security](../reference/security.md) article.

### Join via a browser

The easiest way to join a collaboration session is to simply open the invitation link in a web browser. Here's what to expect:

1. **Sign in**

    After you install the Live Share extension, reload, and wait for dependencies to install, sign in to let other collaborators know who you are. See [Sign in](#sign-in-to-live-share) for more details.

2. **Select the invitation link / open the invitation in your browser**

    Simply open (or re-open) the invitation link in a browser.

    > [!Note] 
    > If you haven't installed the Live Share extension, you'll get links to the Marketplace. Install the extension, restart your chosen tool, and retry.

    You should be notified that the browser wants to launch a tool that's enabled for Live Share. If you let it launch the tool, you'll be connected to the collaboration session when it starts.

    ![Screenshot that shows the join page in a browser.](../media/join-page.png)

    If the host is offline, you'll be notified. You can then contact the host and ask them to share again.

    > [!NOTE]
    > Be sure you've started the tool at least once after installing the Visual Studio Live Share extension and allowed the installation to finish before opening/re-opening the invitation page. Still having trouble? See [Join manually](#join-manually).

3. **Collaborate**

    That's it! In a moment you'll be connected and you can start collaborating.

    You'll see the **Live Share** button change to convey a *session state*. See the information about [session state](#session-states-and-limitations) later in this article.

    When the join is complete, you'll automatically be taken to the file the host is currently editing.

### Join manually

You can also join manually without using a web browser. This  option can be useful when the tool you want to use is already running, you want to use a tool you don't usually use, or you're having trouble getting invitation links to work. The process is easy:

1. **Sign in**

    After you install the Live Share extension, reload, and wait for dependencies install, sign in to let other collaborators know who you are. See [Sign in](#sign-in-to-live-share) for more details.

2. **Use the join command**

    On the **Live Share** tab in the Visual Studio Code Activity Bar, select the **Join collaboration session** button or item:

    ![Screenshot that shows the Join collaboration session button.](../media/vscode-join-viewlet.png)

3. **Paste the invitation link**

    Paste in the invitation URL you were sent and select **Enter** to confirm.

4. **Collaborate!**

    That's it! You should soon be connected to the collaboration session.

    The **Live Share** button will change to convey the session state. See information about [session state](#session-states-and-limitations) later in this article.

    When the join is complete, you'll automatically be taken to the file the host is currently editing.

### Leave a collaboration session

As a guest, you can leave a collaboration session without ending it for others by simply closing the Visual Studio Code window. If you want to keep the window open, you can open the Live Share **Explorer** tab or the **Live Share** tab and select the **Leave collaboration session** button:

![Screenshot that shows the Leave collaboration session button.](../media/vscode-leave-session-viewlet.png)

Any temp files are automatically cleaned up, so you don't need to do anything else.

Having problems with joining? Check out [Troubleshooting](../troubleshooting.md#share-and-join).

## Co-editing

> [!NOTE]
> Co-editing has limitations in certain languages. See [Platform support](../reference/platform-support.md) for information about language-specific features.

When a guest joins a collaboration session, all collaborators will immediately be able to see each other's edits and selections in real-time. All you need to do is pick a file from the file explorer and start editing. Hosts and guests will see edits as you make them and can contribute themselves, which makes it easy iterate and rapidly solve problems.

![Screenshot that shows a co-editing session.](../media/vscode-coedit.png)

> [!NOTE]
> Guests who join a read-only collaboration session can't make edits to files. A host can [enable read-only mode when they share a session](#start-and-stop-a-session). As a guest, you can tell if you've joined a read-only session by looking at the [session state](#session-states-and-limitations).

Participants can see cursors and edits. They can also see selections you make. That makes it easy to highlight where problems might exist or to convey ideas.

![Screenshot that shows selected code.](../media/vscode-highlight.png)

Better yet, you and other participants can go to any file in the shared project. You can edit either together or independently, so you can seamlessly switch from investigation to making small tweaks to full collaborative editing.

The resulting edits are persisted on the host's machine when they're saved. So there's no need to synchronize, push, or send files around when you're done editing.

> **Security tip:** Because all participants can independently navigate and edit files, as a host, you might want to restrict which files guests are able to access in your project via a .vsls.json file. As a guest, you should realize that you might not see certain files as a result of these settings. See [Controlling file access and visibility](../reference/security.md#controlling-file-access-and-visibility) for details.

### Change participant flag behavior

By default, Visual Studio Live Share automatically displays a flag next to a participant's cursor on hover or when the participant makes edits, highlights something, or moves the cursor. In some cases, you might want to change this behavior.

To change that behavior, open settings.json (**File** > **Preferences** > **Settings**), add one of the following lines, and then restart Visual Studio Code.

| Setting | Behavior |
|---------|----------|
| ``"liveshare.nameTagVisibility":"Never"`` | The flag is only visible when you hover over the cursor. |
| ``"liveshare.nameTagVisibility":"Activity"`` | This is the default. The flag is visible on hover or if the participant edits, highlights, or moves the cursor. |
| ``"liveshare.nameTagVisibility":"Always"`` | The flag is always visible. |


### Find and list participants

To quickly see who's in the collaboration session, look at the participants list on the Live Share **Explorer** tab or on the custom tab:

![Screenshot that shows the participants in a session.](../media/vscode-explorer-view.png)

To follow any participant in this list in your active editor group, select the participant.

Alternatively, you can select **Ctrl+Shift+P** or **Cmd+Shift+P** and then select **Live Share: List Participants** or select the status bar item that shows the number of participants in your session:

![User status bar icon 2](../media/vscode-user-status.png)

A list of all participants in the session will appear. The behavior here differs from that of the pushpin icon. This list appears even if there's only one other person in the session with you, so you can always quickly see where someone else is located. As with the pushpin icon, you can pick participants in the list to follow them. Select **Esc** if you want to exit instead.

### Follow along with a collaborator

Sometimes you need to explain a problem or design that spans multiple files or locations in code. In these situations, it can be useful to temporarily follow your colleagues as they move throughout a project. For this reason, when you join a collaboration session, you'll automatically follow the host. When following someone, your editor will stay in sync with their currently open file and scroll position.

> [!NOTE]
> By default, Live Share shares opened files that are outside of the shared folder. If you want to change this behavior, change `liveshare.shareExternalFiles` to `false` in settings.json.

### Request focus

Occasionally you may want everyone in a collaboration session to come and take a look at something you are doing. Live Share lets you ask that everyone "focus" their attention on you with a notification that makes it easy for them to follow you back.

Open the Live Share custom tab in the VS Code activity bar or the Live Share Explorer view, and select the "Focus participants" icon.

![Focus viewlet icon](../media/vscode-focus-viewlet.png)

Once you run the command, everyone in the collaboration session will then get a notification that you've requested their attention.

![Focus toast notification](../media/vscode-focus-toast.png)

They can then just click "Follow" right from the notification when they're ready to put their focus on you.

## Start and stop following collaborators

To start following a participant (as either a host or guest), click on their name in the participants' list in the Live Share Explorer view or custom tab. The circle next to their name will fill in to indicate you are following them.

![VS Code follow from viewlet](../media/vscode-follow-multiple-viewlet.png)

Alternatively, you can click the pin icon in the upper right of the editor group or press **Ctrl+Alt+F / Cmd+Alt+F**.

![VS Code pin](../media/vscode-pin.png)

> [!NOTE]
> If more than one other person is in the collaboration session, you'll be asked to select the participant you want to follow.
>
>![Screen shot showing list of collaborators](../media/vscode-list-collaborators.png)

Since following is tied to an editor group, you can use split view (or grid layout!) to have a group that is following a participant and a group that is not. This allows you to passively follow someone while also working on something independently. With an editor group selected, you can select a participant in the participants list to have that group follow them.

![VS Code pin in split view](../media/vscode-follow-split.png)

To make it easy to switch out of "follow mode" and start editing on your own, you'll automatically stop following if any of these occur:

1. You start editing the currently active file
1. You open a different file
1. You close the currently active file

Additionally, you can explicitly stop following someone by clicking the pin icon again or hitting **Ctrl+Alt+F / Cmd+Alt+F**.

## Co-debugging

Visual Studio Live Share's collaborative debugging feature is a powerful and unique way to debug an issue. Beyond enabling a collaborative experience to troubleshoot problems, it also gives you and other participants in your session the ability to investigate issues that may be environment specific by providing a shared debugging session on the host's machine.

> **Security Tip:** Given all participants can independently navigate and edit files, as a host, you may want to restrict which files guests are able to access in your project via a .vsls.json file. You should also be aware that Console/REPL access means that participants can execute commands on your machine so you should only co-debug with those you trust. As a guest, it is also important to realize you may not be able to follow the debugger as it steps into certain files restricted files as a result of these settings. See [controlling file access and visibility](../reference/security.md#controlling-file-access-and-visibility) for details.

Using it is simple.

1. Be sure both the host and all guests have the appropriate debugging extension installed. (Technically this is not always necessary, but it is generally a good idea.)

2. As the host, if not already set up for the project, you should [configure launch.json](https://code.visualstudio.com/Docs/editor/debugging#_launch-configurations) to debug the application from VS Code as you would normally. No special setup is required.

3. Next, the host can start debugging using the button in the debug tab as normal.

    ![VS Code debug button](../media/vscode-debug-button.png)

    > [!TIP]
    > You can also participate in Visual Studio debugging sessions from VS Code and vice versa! Check out the [Visual Studio instructions](vs.md#co-debugging) on co-debugging for more information.

Once the debugger attaches on the host's side, all guests are also automatically attached. While there is one debugging "session" running on the host's machine, all participants are connected to it and have their own view.

![VS Code debugger attached](../media/vscode-debugger.png)

Anyone can step through the debugging process which enables seamless switching between collaborators without having to negotiate control.

> [!NOTE]
> See [platform support](../reference/platform-support.md) for the state of debugging features by language or platform.

Each collaborator can investigate different variables, jump to different files in the call stack, inspect variables, and even add or remove breakpoints. Co-editing features then allow each participant orator to track where the others are located to provide the unique ability to seamlessly switch between concurrently investigating different aspects of the problem and collaboratively debugging.

> [!NOTE]
> While in a read-only collaboration session, a guest will not be able to step through the debugging process. They can however, still add or remove breakpoints, and inspect variables.

![Animation of concurrent debugging](../media/co-debug.gif)

### Change when VS Code joins debugging sessions

By default, as a guest, you'll be automatically attached to debugging sessions when they are shared by the host. However, in some cases, you may find this behavior disruptive. Fortunately, you can change it as follows:

Simply **edit settings.json** (File > Preferences > Settings), add one of the following lines, and then restart VS Code:

| Setting | Behavior |
|---------|----------|
|``"liveshare.joinDebugSessionOption":"Automatic"`` | The default. As a guest, you'll automatically join any shared debugging session the host starts. |
| ``"liveshare.joinDebugSessionOption":"Prompt"`` | As a guest, you are prompted as to whether you want to join a shared debugging session when it is started by the host. |
| ``"liveshare.joinDebugSessionOption":"Manual"`` | As a guest, you'll need to manually join any  debugging sessions. See [detaching and reattaching](#detaching-and-reattaching). |

### Detaching and reattaching

As a guest, you may wish to stop debugging temporarily. Fortunately, you can simply click the "stop" icon in the debug toolbar to detach the debugger without affecting the host or other guests.

![VS Code debugger stop button](../media/vscode-debug-stop.png)

If you've updated settings so you no longer auto-attach or if you simply want to reattach later, you can do so by pressing **Ctrl+Shift+P / Cmd+Shift+P** or **clicking** on the session state status bar item and selecting "Attach to a Shared Debugging Session".

![VS Code attach debugger](../media/vscode-reattach.png)

### Sharing the running application in a browser

Visual Studio Code does not have the concept of a known "web application port" like Visual Studio for project types such as ASP.NET. However, if you are joining a collaboration session from a Visual Studio host, you may automatically see your default browser appear when debugging starts that is then automatically connected to the host's running applications. See [Visual Studio features](vs.md#automatic-web-app-sharing) for more details.

As a host, you can achieve something similar by manually sharing the application or other endpoints like RESTful services using the "Share Local Server" feature. Visual Studio and VS Code guests can then open a browser on the same localhost port to see the running application.  See [share a server](#share-servers-or-terminals) for more details.

## Share servers or terminals

### Server sharing

From time to time, as a collaboration session host, you may find that you want to share a web application or other locally running servers or services with guests. This can range from other RESTful end-points to databases and other servers. Visual Studio Live Share lets you specify a local port number, optionally give it a name, and then share it with all guests.

The guests will then be able to access the server you shared on that port from their own local machine on the exact same port. For example, if you shared a web server **running on port 3000**, the guest can access that same running web server on their **own machine** at http://localhost:3000! This is accomplished via a secure SSH or SSL tunnel between the host and guests and authenticated via the service so you can be sure that only those in the collaboration session have access.

> **Security Tip:** As a host, you should be very selective with the ports you share with guests and stick to application ports (rather than sharing a system port). For guests, shared ports will behave exactly like they would if the server/service was running on their own machine. This is very useful, but if the wrong port is shared can also be risky.

For security purposes, only servers running on ports you specify are available to other guests. Fortunately, it's easy to add one as the collaboration session **host**. Here's how:

1. Open the Live Share custom tab in the VS Code activity bar or the Live Share Explorer view, and select the "Share server..." entry or click the icon.

    ![VS Code share local server](../media/vscode-share-local-server-viewlet.png)<br />

1. Enter the port number the server is running on and optionally a name.

    ![Screen shot of port number prompt](../media/vscode-enter-port.png)<br />

That's it! The server on the port you specified will now be mapped to each guest's localhost on the same port (unless that port was already occupied)!

If the port is already in use on the guest's machine, a different one is automatically selected. Fortunately, as a guest, you can see a list of currently shared ports (by name if specified) in the Live Share Explorer view or custom tab in the VS Code activity bar, and look under the shared servers list. Selecting an entry opens that server in your browser. You can also right click and select the option to copy the link to the server to the clipboard.

![VS Code access local server](../media/vscode-access-shared-server-viewlet.png)<br />

Note that *guests cannot* control which ports on the host's machine are shared for security reasons.

To **stop** sharing a local server as the host, hover over the server entry in the shared servers list in the Live Share Explorer view or custom tab, and click the "Unshare server" icon.

![VS Code stop sharing server](../media/vscode-stop-sharing-server-viewlet.png)<br />

### Terminal sharing

Modern development makes frequent use of a wide array of command line tools. Fortunately, Live Share allows you, as a host, to optionally "share a terminal" with guests. The shared terminal can be read-only or fully collaborative so both you and the guests can run commands and see the results. You can to give guests visibility to terminal output or let them get hands-on and run tests, builds, or even triage environment-specific problems that only happen on your machine.

However, terminals are **not** shared by default since they give guests at least read-only access to the output of commands you run (if not the ability to run commands themselves). This way you can freely run commands in local terminals without risk and only share when actually need to do so. In addition, only hosts can start shared terminals to prevent guests from starting one up and doing something you are not expecting or watching.

As a host, you can share a terminal by opening the Live Share custom tab in the VS Code activity bar or the Live Share Explorer view, and selecting the "Share server..." entry or clicking the icon.

![VS Code share terminal](../media/vscode-share-terminal-viewlet.png)<br />

At this point, you can select a read-only or read/write terminal from the menu. When the terminal is read/write, everyone can type in the terminal including the host which makes it easy to intervene if a guest is doing something you do not like. However, to be safe, you should **only give read/write access to guests when you know they actually need it** and stick with read-only terminals for scenarios where you just want the guest to see the output of any commands you run. Keep in mind that read/write access gives the guest the same access to your terminal that you have, and they can run any command on your computer that you can.

> [!NOTE]
> If the collaboration session is in read-only mode, only read-only terminals can be shared by the host.

![Read-only or read/write selection](../media/vscode-share-terminal-ro-rw.png)<br />

Once you've selected the kind of shared terminal you want to start, a new shared terminal will appear under VS Code's terminals tab.

![Shared terminal running](../media/vscode-share-terminal-up.png)<br />

If multiple terminals are shared, or your focus is in a different tab, you can bring focus to a specific terminal by selecting the entry in the shared terminals list.

![Shared terminal bring focus](../media/vscode-shared-terminal-focus.png)<br />

To end your terminal session, simply type exit, close the terminal window, or click the "Unshare terminal" icon in the Live Share Explorer view or custom tab and everyone will be disconnected.

## Session states and limitations

After you have started or joined collaboration session and have access to shared content, the Visual Studio Live Share status bar items update their appearance to reflect the state of the active collaboration session.

The following are the states you will typically see:

| State | Status Bar | Description |
|-------|--------------------|-------------|
| Inactive | ![VS Code status: inactive](../media/vscode-status-share.png) | No active collaboration session and nothing is shared. |
| Host: Sharing In-Progress | ![VS Code status: share in progress](../media/vscode-status-sharing.png)| A collaboration session is starting and content sharing will begin shortly. |
| Host: Sharing | ![VS Code status: sharing active ](../media/vscode-status-active.png)| A collaboration session is active and content is shared. |
| Host: Sharing Read-only | ![VS Code status: sharing read-only](../media/vscode-status-sharing-read-only.png)| Sharing a read-only collaboration session. |
| Guest: Joining Session | ![VS Code status: joining](../media/vscode-status-joining.png)| Joining an existing collaboration session. |
| Guest: Joined | ![VS Code status: joined](../media/vscode-status-active.png) | Joined and connected to an active collaboration session and receiving shared content. |
| Guest: Joined Read-only | ![VS Code status: joined read-only](../media/vscode-status-joined-read-only.png) | Joined and connected to an active read-only collaboration session. |


While there are currently some shortcomings guests will experience while using the features described above, collaboration session hosts retain the complete functionality of their tool of choice. See the following for more information:

- [Language and platform support](../reference/platform-support.md)
- [Extension support](../reference/extensions.md)
- [All major bugs, feature requests, and limitations](https://aka.ms/vsls-issues)
- [All feature requests and limitations](https://aka.ms/vsls-feature-requests)
- [Troubleshooting](../troubleshooting.md)

## Next steps

Check out these additional articles for more information.

- [Quickstart: Share your first project](../quickstart/share.md)
- [Quickstart: Join your first session](../quickstart/share.md)
- [How-to: Collaborate using Visual Studio](vs.md)
- [Connectivity requirements for Live Share](../reference/connectivity.md)
- [Security features of Live Share](../reference/security.md)
- [Linux installation details](../reference/linux.md)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
