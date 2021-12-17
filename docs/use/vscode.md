---
title: "Co-edit in Visual Studio Code with Live Share collaboration sessions"
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

# Use Live Share to collaborate in Visual Studio Code

Ready to start collaborating with Live Share in Visual Studio Code? In this article, we'll walk you through setting up a collaboration session in Visual Studio Code by using the Live Share Extension.

Note that the collaboration activities described here involve a single collaboration session host and one or more guests. The host is the person who started the collaboration session, and anyone that joins is a guest.

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

Linux is a highly variable environment. Given the number of desktop environments and distributions, getting Live Share installed can be complicated. If you use supported versions of Ubuntu Desktop (16.04+), Fedora Workstation (27+), or CentOS 7 and only use official distributions of Visual Studio Code, the process should be straightforward. If you're using a nonstandard configuration or downstream distribution, you might encounter complications. For more information, see [Linux installation details](../reference/linux.md).

#### Install Linux prerequisites

Some distributions of Linux are missing libraries that Live Share needs. By default, Live Share attempts to detect and install Linux prerequisites. You'll see a notification prompting you to install libraries when Live Share encounters a problem that can be caused by missing libraries:

![Screenshot of notification for missing Linux libraries.](../media/vscode-linux-prereq-missing.png)

When you select **Install**, a terminal window will open. Enter your admin (sudo) password to continue. If the installation completes successfully, restart Visual Studio Code. You should be all set. You might also want to check out [Tips by distribution](../reference/linux.md#tips-by-distribution) for other hints and workarounds.

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
> Linux users: You might be prompted to enter a user code if you're using an older version of Live Share (0.3.295 or earlier). Update to the latest version of the extension or, to see the code, select **Having trouble?** after you sign in. For details, see [Sign in by using a user code](#sign-in-by-using-a-user-code).


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

5. Paste the user code into the input field that appeared when you ran the command. Select **Enter** to complete the sign-in process.

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

Because this list can be long, it might be easier to use a scoped command menu from the status bar. Selecting the sign in / session state button on the status bar will bring up a contextualized list of commands that are available for use:

![Screenshot that shows the Visual Studio Code session state button.](../media/vscode-share-state.png)

## Start and stop a session

After you download and install Visual Studio Live Share, follow these steps to start a collaboration session and invite a colleague to work with you.

1. **Sign in**

    After you install the Live Share Extension, reload, and wait for dependencies to install, sign in to let other collaborators know who you are. For more information, see [Sign in](#sign-in-to-live-share).

2. **Open a folder**

    Use your normal workflow to open a folder, project, or solution that you want to share with your guests.

3. **[Optional] Update hidden or excluded files**

    By default, Live Share hides from your guests any files and folders referenced in .gitignore files in your shared folders. *Hiding* a file prevents it from appearing in the guest's file tree. *Excluding* a file applies a stricter rule. Excluding a file will prevent Live Share from opening it for a guest in situations like **Go to Definition** or if you step into a file while debugging or being "followed." To hide or exclude files, add a .vsls.json file with appropriate settings to your project. For more information, see [controlling file access and visibility](../reference/security.md#controlling-file-access-and-visibility).

4. **Start a collaboration session**

    To start a session, select **Live Share** on the status bar or select **Ctrl+Shift+P** or **Cmd+Shift+P** and then select **Live Share: Start a collaboration session (Share)**.

    ![Screenshot that shows the Live Share button.](../media/vscode-share-button-new.png)

    > [!NOTE]
    > The first time you share, your desktop firewall software might prompt you to allow the Live Share agent to open a port. Opening a port is optional. It enables a secured direct mode to improve performance when the person you're working with is on the same network as you. For more information, see [changing the connection mode](../reference/connectivity.md#changing-the-connection-mode).

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

    The guests you invite might have questions. The [Quickstart: Join your first session](../quickstart/join.md) article provides information on getting started as a guest.

7. **[Optional] Approve the guest**

    By default, guests will automatically join your collaboration session and you'll be notified when they're ready to work with you. This notification gives you the option to remove them from the session. You can also choose to require explicit approval for anyone joining.

    To enable this approval, add the following code to settings.json:

    ```json
    "liveshare.guestApprovalRequired": true
    ```

    When you have this setting turned on, a notification will prompt you to approve guests before they can join:

    ![Screenshot that shows a Visual Studio Code join approval request.](../media/vscode-join-approval.png)

    See [Invitations and join access](../reference/security.md#invitations-and-join-access) for more information on invitation security considerations.

That's it!

### Stop the collaboration session

As a host, you can stop sharing completely and end the collaboration session at any time. To do so, open the Live Share view on the **Explorer** tab or the **VS Live Share** tab and select the **Stop collaboration session** button:

![Screenshot that shows the Stop collaboration session button.](../media/vscode-end-collaboration-viewlet.png)

All guests will be notified that the session is over. After the session is over, guests won't be able to access the content. Any temp files will automatically be cleaned up.

Having problems with sharing? See the [troubleshooting](../troubleshooting.md#share-and-join) article.

## Join and leave a session

After they download and install Visual Studio Live Share, guests need to take only a couple steps to join a hosted collaboration session. There are two ways to join: [via a browser](#join-via-a-browser) and [manually](#join-manually).

> **Security tip:** Guests joining a collaboration session need to understand that hosts might restrict their access to certain files or features. Want to understand the security implications of Live Share features and settings? Check out the [security](../reference/security.md) article.

### Join via a browser

The easiest way to join a collaboration session is to simply open the invitation link in a web browser. Here's what to expect:

1. **Sign in**

    After you install the Live Share Extension, reload, and wait for dependencies to install, sign in to let other collaborators know who you are. For more information, see [Sign in](#sign-in-to-live-share).

2. **Select the invitation link / open the invitation in your browser**

    Simply open (or re-open) the invitation link in a browser.

    > [!Note] 
    > If you haven't installed the Live Share Extension, you'll get links to the Marketplace. Install the extension, restart your chosen tool, and retry.

    You should be notified that the browser wants to start a tool that's enabled for Live Share. If you let it start the tool, you'll be connected to the collaboration session when it starts.

    ![Screenshot that shows the join page in a browser.](../media/join-page.png)

    If the host is offline, you'll be notified. You can then contact the host and ask them to share again.

    > [!NOTE]
    > Be sure you've started the tool at least once after installing the Visual Studio Live Share Extension and allowed the installation to finish before opening/re-opening the invitation page. Still having trouble? See [Join manually](#join-manually).

3. **Collaborate**

    That's it! In a moment you'll be connected and you can start collaborating.

    You'll see the **Live Share** button change to convey a *session state*. See the information about [session state](#session-states-and-limitations) later in this article.

    When the join is complete, you'll automatically be taken to the file the host is currently editing.

### Join manually

You can also join manually without using a web browser. This  option can be useful when the tool you want to use is already running, you want to use a tool you don't usually use, or you're having trouble getting invitation links to work. The process is easy:

1. **Sign in**

    After you install the Live Share Extension, reload, and wait for dependencies install, sign in to let other collaborators know who you are. For more information, see [Sign in](#sign-in-to-live-share).

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

As a guest, you can leave a collaboration session without ending it for others by simply closing the Visual Studio Code window. If you want to keep the window open, you can open the Live Share **Explorer** tab or the **VS Live Share** tab and select the **Leave collaboration session** button:

![Screenshot that shows the Leave collaboration session button.](../media/vscode-leave-session-viewlet.png)

Any temp files are automatically cleaned up, so you don't need to do anything else.

Having problems with joining? Check out [Troubleshooting](../troubleshooting.md#share-and-join).

## Co-editing

> [!NOTE]
> Co-editing has limitations in certain languages. See [Platform support](../reference/platform-support.md) for information about language-specific features.

When a guest joins a collaboration session, all collaborators will immediately be able to see each other's edits and selections in real-time. All you need to do is pick a file from the file explorer and start editing. Hosts and guests will see edits as you make them and can contribute themselves, which makes it easy iterate and rapidly solve problems.

![Screenshot that shows a co-editing session.](../media/vscode-coedit.png)

> [!NOTE]
> Guests who join a read-only collaboration session can't make edits to files. Hosts can [enable read-only mode when they share a session](#start-and-stop-a-session). As a guest, you can tell if you've joined a read-only session by looking at the [session state](#session-states-and-limitations).

Participants can see cursors and edits. They can also see selections you make. That makes it easy to highlight where problems might exist or to convey ideas.

![Screenshot that shows selected code.](../media/vscode-highlight.png)

You and other participants can go to any file in the shared project. You can edit either together or independently, so you can seamlessly switch from investigation to making small changes to full collaborative editing.

The resulting edits are persisted on the host's computer when they're saved. So there's no need to synchronize, push, or send files around when you're done editing.

> **Security tip:** Because all participants can independently go to and edit files, as a host, you might want to restrict which files guests are able to access in your project via a .vsls.json file. As a guest, you should realize that you might not see certain files as a result of these settings. For more information, see [Controlling file access and visibility](../reference/security.md#controlling-file-access-and-visibility).

### Change participant flag behavior

By default, Visual Studio Live Share automatically displays a flag next to a participant's cursor on hover or when the participant makes edits, highlights something, or moves the cursor. In some cases, you might want to change this behavior.

To change the behavior, open settings.json (**File** > **Preferences** > **Settings**), add one of the following lines, and then restart Visual Studio Code.

| Setting | Behavior |
|---------|----------|
| ``"liveshare.nameTagVisibility":"Never"`` | The flag is visible only when you hover over the cursor. |
| ``"liveshare.nameTagVisibility":"Activity"`` | This is the default. The flag is visible on hover or if the participant edits, highlights, or moves the cursor. |
| ``"liveshare.nameTagVisibility":"Always"`` | The flag is always visible. |


### Find and list participants

To quickly see who's in the collaboration session, look at the participants list on the Live Share **Explorer** tab or on the **VS Live Share** tab:

![Screenshot that shows the participants in a session.](../media/vscode-explorer-view.png)

To follow any participant in this list in your active editor group, select the participant.

Alternatively, you can select **Ctrl+Shift+P** or **Cmd+Shift+P** and then select **Live Share: List Participants** or select the status bar item that shows the number of participants in your session:

![Screenshot that shows the status bar item.](../media/vscode-user-status.png)

A list of all participants in the session will appear. The behavior here differs from that of the pushpin button. This list appears even if there's only one other person in the session with you, so you can always quickly see where someone else is located. As with the pushpin button, you can pick participants in the list to follow them. Select **Esc** if you want to exit instead.

### Follow along with a collaborator

Sometimes you need to explain a problem or design that spans multiple files or locations in code. In these situations, it can be useful to temporarily follow your colleagues as they move throughout a project. For this reason, when you join a collaboration session, you'll automatically follow the host. When you're following someone, your editor will stay in sync with that person's currently open file and scroll position.

> [!NOTE]
> By default, Live Share shares opened files that are outside of the shared folder. If you want to change this behavior, change `liveshare.shareExternalFiles` to `false` in settings.json.

### Request focus

You might sometimes want everyone in a collaboration session to take a look at something you're doing. Live Share lets you ask that everyone focus their attention on you with a notification that makes it easy for them to follow you.

Open the **VS Live Share** tab in the Visual Studio Code Activity Bar or the Live Share **Explorer** tab, and then select the **Focus participants** button:

![Screenshot that shows the Focus participants button.](../media/vscode-focus-viewlet.png)

Everyone in the collaboration session will get a notification that you've requested their attention:

![Screenshot that shows the request focus notification.](../media/vscode-focus-toast.png)

They can then select **Follow** in the notification when they're ready to focus on your actions.

## Start and stop following collaborators

To start following a participant (as either a host or a guest), select the participant's name in the participants list on the Live Share **Explorer** tab or on the **VS Live Share** tab. The circle next to the name will become solid to indicate that you're following them:

![Screenshot that shows a participant who's being followed.](../media/vscode-follow-multiple-viewlet.png)

Alternatively, you can select the pushpin button in the upper-right corner of the editor group or select **Ctrl+Alt+F** or **Cmd+Alt+F**.

![Screenshot that shows the pushpin button.](../media/vscode-pin.png)

> [!NOTE]
> If more than one other person is in the collaboration session, you'll be prompted to select the participant who you want to follow:
>
>![Screenshot that shows a list of participants.](../media/vscode-list-collaborators.png)

Because following is linked to an editor group, you can use split view or grid layout to create a group that's following a participant and a group that's not. This layout allows you to passively follow someone while also working on something independently. When you have an editor group selected, you can select a participant in the participants list to have the group follow the participant.

![Screenshot that shows two editor groups in split view.](../media/vscode-follow-split.png)

To make it easy to switch out of follow mode and start editing on your own, you'll automatically stop following if one of these actions occurs:
- You open a different file.
- You close the currently active file.

Additionally, you can explicitly stop following someone by selecting the pushpin button again or by selecting **Ctrl+Alt+F** or **Cmd+Alt+F**.

## Co-debugging

The Visual Studio Live Share collaborative debugging feature is a powerful way to debug a problem. It enables a collaborative experience to troubleshoot problems. It also gives you and other participants in your session the ability to investigate problems that might be environment specific by providing a shared debugging session on the host's computer.

> **Security tip:** Because participants can independently go to and edit files, as a host, you might want to restrict which files guests are able to access in your project via a .vsls.json file. You should also be aware that Console/REPL access enables participants to run commands on your computer, so you should only co-debug with people you trust. Guests should realize that, because of restrictive settings, they might not be able to follow the debugger as it steps into certain restricted files. For more information, see [Controlling file access and visibility](../reference/security.md#controlling-file-access-and-visibility).

Using collaborative debugging is simple.

1. Be sure the host and all guests have the appropriate debugging extension installed. (Installation isn't always necessary, but it's generally a good idea.)

2. The host, if not already set up for the project, should [configure launch.json](https://code.visualstudio.com/Docs/editor/debugging#_launch-configurations) to debug the application from Visual Studio Code as normal. No special setup is required.

3. The host can start debugging by using the button on the debug tab, as normal:

    ![Screenshot that shows the Visual Studio Code debug button.](../media/vscode-debug-button.png)

    > [!TIP]
    > You can also participate in Visual Studio debugging sessions from Visual Studio Code, and vice versa. For more information, see the [Visual Studio instructions](vs.md#co-debugging) for co-debugging.

When the debugger attaches on the host's side, all guests are also automatically attached. There's one debugging session running on the host's computer, but all participants are connected to it and have their own view:

![Screenshot that shows the Visual Studio Code debugger.](../media/vscode-debugger.png)

Anyone can step through the debugging process, so you can switch among collaborators without having to negotiate control.

> [!NOTE]
> See [Platform support](../reference/platform-support.md) for information about debugging feature support by language or platform.

Each collaborator can investigate variables, go to various files in the call stack, inspect variables, and even add or remove breakpoints. Co-editing features allow each participant to track where the others are located so they can switch between concurrently investigating aspects of the problem and collaboratively debugging.

> [!NOTE]
> In a read-only collaboration session, guests won't be able to step through the debugging process. They can add or remove breakpoints and inspect variables.

![Animation that shows concurrent debugging.](../media/co-debug.gif)

### Change when Visual Studio Code joins debugging sessions

By default, as a guest, you'll be automatically attached to debugging sessions when they're shared by the host. You might find this behavior disruptive. 

To change this behavior, open settings.json (**File** > **Preferences** > **Settings**), add one of the following lines, and then restart Visual Studio Code:

| Setting | Behavior |
|---------|----------|
|``"liveshare.joinDebugSessionOption":"Automatic"`` | The default. As a guest, you'll automatically join any shared debugging session the host starts. |
| ``"liveshare.joinDebugSessionOption":"Prompt"`` | As a guest, you're prompted to join a shared debugging session when it's started by the host. |
| ``"liveshare.joinDebugSessionOption":"Manual"`` | As a guest, you'll need to manually join debugging sessions. See [Detaching and reattaching](#detaching-and-reattaching). |

### Detaching and reattaching

As a guest, you might want to stop debugging temporarily. You can select the **Stop** button on the debug toolbar to detach the debugger without affecting the host or other guests:

![Screenshot that shows the Stop button.](../media/vscode-debug-stop.png)

If you've updated your settings so you don't automatically attach, or if you want to reattach later, you can do so by selecting **Ctrl+Shift+P** or **Cmd+Shift+P** or selecting the session state status bar item and then selecting **Attach to a Shared Debugging Session**:

![Screenshot that shows the Attach to a Shared Debugging Session command.](../media/vscode-reattach.png)

### Share the running application in a browser

Unlike Visual Studio, Visual Studio Code doesn't support known web application ports for project types like ASP.NET. But if you're joining a collaboration session from a Visual Studio host, you might automatically see your default browser appear when debugging starts. The browser is then automatically connected to the host's running applications. For more information, see [Visual Studio features](vs.md#automatic-web-app-sharing).

As a host, you can achieve something similar by manually sharing the application, or other endpoints like RESTful services, by using the Share Local Server feature. Visual Studio and Visual Studio Code guests can then open a browser on the same localhost port to see the running application. For more information, see [Share a server](#share-servers-or-terminals).

## Share servers or terminals

### Server sharing

From time to time, collaboration session hosts might want to share a web application or other locally running servers or services with guests. This can range from other RESTful endpoints to databases and other servers. Visual Studio Live Share lets you specify a local port number, optionally give it a name, and then share it with all guests.

The guests will then be able to access the server you shared on that port from their own local computers on the same port. For example, if you share a web server running on port 3000, guests can access that same running web server on their own computers at http://localhost:3000. 

This connection is accomplished via an improved security SSH or SSL tunnel between the host and guests and authenticated via the service. This connection mechanism helps to ensure that only people in the collaboration session have access.

> **Security tip:** As a host, be selective about the ports you share with guests. Stick to application ports (rather than sharing a system port). For guests, shared ports will behave exactly as they would if the server/service were running on the guest's computer. This behavior is useful, but it can be risky if you share the wrong port.

For security reasons, only servers running on ports that you specify are available to other guests. It's easy for the collaboration session host to add one. Here's how:

1. On the **VS Live Share** tab or the Live Share **Explorer** tab, select the **Share server** item or button:

    ![Screenshot that shows the Share server button.](../media/vscode-share-local-server-viewlet.png)

1. Enter the number of the port the server is running on. Optionally, enter a name:

    ![Screenshot that shows the port number prompt.](../media/vscode-enter-port.png)

That's it! The server on the port you specified will now be mapped to each guest's localhost on the same port (unless that port is already being used).

If the port is already being used on the guest's computer, a different one is automatically selected. As a guest, you can see a list of shared ports (by name, if specified) on the Live Share **Explorer** tab or the **VS Live Share** tab. The list is under **Shared Servers**. If you select a port, that server opens in your browser. You can also right-click and select an option to copy the server link to the clipboard.

![Screenshot that shows the Shared Servers list.](../media/vscode-access-shared-server-viewlet.png)<br />

For security reasons, guests can't control which ports on the host's computer are shared.

To stop sharing a local server, the host can hover over the server item in the **Shared Servers** list and then select the **Unshare server** button:

![Screenshot that shows the Unshare server button.](../media/vscode-stop-sharing-server-viewlet.png)

### Terminal sharing

Modern developers frequently use of a variety of command-line tools. Live Share allows hosts to share a terminal with guests. The shared terminal can be read-only or fully collaborative, so you and the guests can run commands and see the results. You can make terminal output visible to guests. You can also let them run tests or builds or even triage environment-specific problems that only happen on your computer.

By default, terminals aren't shared because they give guests at least read-only access to the output of commands you run (if not the ability to run commands themselves). This default configuration allows you to run commands in local terminals with reduced risk and share only when you need to. And only hosts can start shared terminals. This limitation prevents guests from starting one up and doing something you aren't expecting.

As a host, you can share a terminal from the **VS Live Share** or the Live Share **Explorer** tab. Select the **Share terminal** item or button:

![Screenshot that shows the Share terminal button.](../media/vscode-share-terminal-viewlet.png)

At this point, you can choose whether to make the terminal read-only or read/write. When the terminal is read/write, everyone can type in the terminal, including the host. So, as a host, you can easily intervene if a guest is doing something you don't like. 

To be safe, you should *give read/write access to guests only when you know they actually need it*. Stick with read-only terminals when you just want the guests to see the output of commands you run. Keep in mind that read/write access gives guests the same access to your terminal that you have. They can run any command on your computer that you can.

> [!NOTE]
> If a collaboration session is in read-only mode, only read-only terminals can be shared by the host.

![Screenshot that shows the Read-only and Read/write choices for access level.](../media/vscode-share-terminal-ro-rw.png)

After you select the kind of shared terminal you want to start, a new shared terminal will appear in the Visual Studio Code **Terminal** tab:

![Screenshot that shows the Terminal tab in Visual Studio Code.](../media/vscode-share-terminal-up.png)

If multiple terminals are shared, or if your focus is in a different tab, you can bring focus to a terminal by selecting the entry in the **Shared Terminals** list:

![Screenshot that shows the Shared Terminals list.](../media/vscode-shared-terminal-focus.png)

To end a terminal session, enter **exit**, close the terminal window, or select the **Unshare terminal** button on the Live Share **Explorer** tab or the **VS Live Share** tab. Everyone will be disconnected.

## Enable accessibility features

By default, Live Share keeps you aware of what other participants in the session are doing with visual indicators - a cursor to match each participant's location, a shared viewport in follow mode, synchronized edits, and so on. Live Share also has a setting to surface this information audibly, `liveshare.accessibility.accessibilityFeaturesEnabled`. With accessibility features enabled, Live Share plays various sounds and messages to keep you aware of what other participants are doing in a non-disruptive way.

### General information

At all times, Live Share will

- Play a sound when you follow someone and announce their name and position.
- Play a sound when you unfollow someone and announce their name.
- Announce when a guest joins or leaves the session.

### Outside of follow mode

When you are not following another participant

- If someone edits on your line, Live Share will play an edit sound and announce the name of the participant editing on your line. For subsequent edits, Live Share will play the edit sound with no announcement. Live Share will announce when they leave your line.
- If someone edits nearby, Live Share will play an edit sound and announce the name of the participant that is editing nearby. For subsequent edits, Live Share will play a sound indicating the participant is editing nearby with volume proportional to how near they are.

### Follow mode

When you are following another participant, Live Share provides you more information about their activity. Live Share will

- Play an edit sound when they type.
- Play a sound when they change position due to a command, such as Go to Definition. 
- Play a sound when they change position via the keyboard. For a single line change, Live Share will play a key click, followed by a bend sound that indicates the direction of the change, followed by an announcement of the new line. For a multi-line change, Live Share will play a bend sound that indicates the direction of the change, followed by an announcement of the new line.
- Play a bend sound when they change position via the keyboard that indicates the direction of the change, followed by an announcement of the new line.
- Announce that they made a selection. For single line selections, Live Share will read the selection contents. For multi-line selections, Live Share will announce the selected lines.
- Announce when they switch files, indicating the new file name.
- Play a scrolling sound when they scroll, followed by a bend sound that indicates the direction of the change, followed by an announcement of the new visible range.

### Customization

Live Share provides several additional settings to customize these audio cues.

- `liveshare.accessibility.soundsEnabled` - enables feedback sounds.
- `liveshare.accessibility.soundVolume` - sets the volume of sounds.
- `liveshare.accessibility.voiceEnabled` - enables spoken announcements.
- `liveshare.accessibility.speechVolume` - sets the volume of announcements.
- `liveshare.accessibility.speechRate` - sets the speech rate of announcements.
- `liveshare.accessibility.voice` - sets the voice used for announcements. Currently supports 37 different voices, spanning genders, ages, and accents.

Live Share also contributes several commands related to these features that can be bound to keyboard shortcuts.

- `Accessibility: Toggle Sounds Enabled` - toggles the `liveshare.accessibility.soundsEnabled` setting.
- `Accessibility: Toggle Voice Enabled` - toggles the `liveshare.accessibility.voiceEnabled` setting.
- `Accessibility: Announce Co-editor Location` - announces all co-editors' locations, regardless of if they're being followed.
- `Accessibility: Set Output Device` - change the output device used to play audio cues. Note: this command is currently only available on Windows.

### Cursor tethering

With accessibility features enabled, when following another participant Live Share will keep your cursor locked to the same position that the followed participant's cursor is at to make it easier to use the screen reader.

### Braille Displays

With the exception of cursor tethering, the accessibility features described above surface information audibly. We're in the process of exploring how to present this same information tactility to users with braille displays. If you'd like to learn more or be involved, please get in touch with us at vsls-feedback@microsoft.com.

### Network Requirements

Speech is generated by Azure Cognitive Services on demand. This means to receive speech feedback, you need to have an active internet connection and be able to reach the Cognitive Services endpoint - https://westus2.api.cognitive.microsoft.com.

## Session states and limitations

After you've started or joined a collaboration session, the Visual Studio Live Share status bar item reflects the state of the active session.

These are the states you'll typically see:

| State | Status bar item | Description |
|-------|--------------------|-------------|
| Inactive | ![VS Code status: inactive](../media/vscode-status-share.png) | No active collaboration session. Nothing is shared. |
| Host: Sharing In-Progress | ![VS Code status: share in progress](../media/vscode-status-sharing.png)| A collaboration session is starting. Content sharing will begin soon. |
| Host: Sharing | ![VS Code status: sharing active ](../media/vscode-status-active.png)| A collaboration session is active. Content is shared. |
| Host: Sharing Read-only | ![VS Code status: sharing read-only](../media/vscode-status-sharing-read-only.png)| Host is sharing a read-only collaboration session. |
| Guest: Joining Session | ![VS Code status: joining](../media/vscode-status-joining.png)| Guest is joining an existing collaboration session. |
| Guest: Joined | ![VS Code status: joined](../media/vscode-status-active.png) | Guet is joined and connected to an active collaboration session and receiving shared content. |
| Guest: Joined Read-only | ![VS Code status: joined read-only](../media/vscode-status-joined-read-only.png) | Guest is joined and connected to an active read-only collaboration session. |


Although there are currently some shortcomings guests will experience while using the features described in this article, collaboration session hosts retain the complete functionality of their chosen tool. For more information, see:

- [Language and platform support](../reference/platform-support.md)
- [Extension support](../reference/extensions.md)
- [All major bugs, feature requests, and limitations](https://aka.ms/vsls-issues)
- [All feature requests and limitations](https://aka.ms/vsls-feature-requests)
- [Troubleshooting](../troubleshooting.md)

## Next steps

Check out these articles for more information:

- [Quickstart: Share your first project](../quickstart/share.md)
- [Quickstart: Join your first session](../quickstart/share.md)
- [How-to: Collaborate using Visual Studio](vs.md)
- [Connectivity requirements for Live Share](../reference/connectivity.md)
- [Security features of Live Share](../reference/security.md)
- [Linux installation details](../reference/linux.md)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
