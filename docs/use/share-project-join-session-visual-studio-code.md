---
title: Share a project and join a session in Visual Studio Code
titleSuffix: Live Share
description: Learn how to share a project and join a session to collaborate by using Visual Studio Code and Live Share.
ms.date: 01/22/2022
ms.reviewer: mikejo5000
ms.topic: how-to
author: fubaduba
ms.author: fishah
manager: jmartens
---

<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Share a project and join a collaboration session in Visual Studio Code

After installing and signing into Visual Studio Live Share, share a project and start a collaboration session with your team.

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

## Start a session

After you download and install Visual Studio Live Share, follow these steps to start a collaboration session and invite a colleague to work with you.

1. **Sign in**

    After you install the Live Share Extension, reload, and wait for dependencies to install, sign in to let other collaborators know who you are. For more information, see [Sign in](install-live-share-visual-studio-code.md#sign-in-to-live-share).

2. **Open a folder**

    Use your normal workflow to open a folder, project, or solution that you want to share with your guests.

3. **[Optional] Update hidden or excluded files**

    By default, Live Share hides from your guests any files and folders referenced in .gitignore files in your shared folders. *Hiding* a file prevents it from appearing in the guest's file tree. *Excluding* a file applies a stricter rule. Excluding a file will prevent Live Share from opening it for a guest in situations like **Go to Definition** or if you step into a file while debugging or being "followed." To hide or exclude files, add a .vsls.json file with appropriate settings to your project. For more information, see [controlling file access and visibility](../reference/security.md#controlling-file-access-and-visibility).

4. **Start a collaboration session**

    To start a session, select **Live Share** on the status bar or select **Ctrl+Shift+P** or **Cmd+Shift+P** and then select **Live Share: Start collaboration session (Share)**.

    :::image type="content" source="../media/install-live-share-visual-studio-code/live-share-button-status-bar.png" alt-text="Screenshot that shows the Visual Studio Code Live Share button.":::

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

    Send the link over e-mail, Teams, Slack, Skype, or other platforms to the guests you want to invite. Given the level of access Live Share sessions can provide to guests, *you should only share with people you trust*, and you should think through the implications of what you're sharing.

    > [!TIP]
    > Want to understand the security implications of some Live Share features? For more information, see the [security](../reference/security.md) article.

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

## Stop the collaboration session

As a host, you can stop sharing completely and end the collaboration session at any time. To do so, open the Live Share view on the **Explorer** tab or the **VS Live Share** tab and select the **Stop collaboration session** button:

![Screenshot that shows the Stop collaboration session button.](../media/vscode-end-collaboration-viewlet.png)

All guests will be notified that the session is over. After the session is over, guests won't be able to access the content. Any temp files will automatically be cleaned up.

Having problems with sharing? For more information, see the [troubleshooting](../troubleshooting.md#share-and-join) article.

## Join and leave a session

After they download and install Visual Studio Live Share, guests need to take only a couple steps to join a hosted collaboration session. There are two ways to join: [via a browser](#join-via-a-browser) and [manually](#join-manually).

> [!TIP]
> Guests joining a collaboration session need to understand that hosts might restrict their access to certain files or features. Want to understand the security implications of Live Share features and settings? For more information, see the [security](../reference/security.md) article.

### Join via a browser

The easiest way to join a collaboration session is to simply open the invitation link in a web browser. Here's what to expect:

1. **Sign in**

    After you install the Live Share Extension, reload, and wait for dependencies to install, sign in to let other collaborators know who you are. For more information, see [Sign in](install-live-share-visual-studio-code.md#sign-in-to-live-share).

2. **Select the invitation link / open the invitation in your browser**

    Simply open (or re-open) the invitation link in a browser.

    > [!NOTE]
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

You can also join manually without using a web browser. This option can be useful when the tool you want to use is already running, you want to use a tool you don't usually use, or you're having trouble getting invitation links to work. The process is easy:

1. **Sign in**

    After you install the Live Share Extension, reload, and wait for dependencies install, sign in to let other collaborators know who you are. For more information, see [Sign in](install-live-share-visual-studio-code.md#sign-in-to-live-share).

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

Having problems with joining? For more information, see [troubleshooting](../troubleshooting.md#share-and-join).

## Session states and limitations

After you've started or joined a collaboration session, the Visual Studio Live Share status bar item reflects the state of the active session.

These are the states you'll typically see:

| State | Status bar item | Description |
|-------|--------------------|-------------|
| Inactive | ![Screenshot that shows the Visual Studio Code status as inactive.](../media/vscode-status-share.png) | No active collaboration session. Nothing is shared. |
| Host: Sharing In-Progress | ![Screenshot that shows the Visual Studio Code status as share in progress.](../media/vscode-status-sharing.png)| A collaboration session is starting. Content sharing will begin soon. |
| Host: Sharing | ![Screenshot that shows the Visual Studio Code status as sharing active.](../media/vscode-status-active.png)| A collaboration session is active. Content is shared. |
| Host: Sharing Read-only | ![Screenshot that shows the Visual Studio Code status as sharing read-only.](../media/vscode-status-sharing-read-only.png)| Host is sharing a read-only collaboration session. |
| Guest: Joining Session | ![Screenshot that shows the Visual Studio Code status as joining.](../media/vscode-status-joining.png)| Guest is joining an existing collaboration session. |
| Guest: Joined | ![Screenshot that shows the Visual Studio Code status as joined.](../media/vscode-status-active.png) | Guest is joined and connected to an active collaboration session and receiving shared content. |
| Guest: Joined Read-only | ![Screenshot that shows the Visual Studio Code status as joined read-only.](../media/vscode-status-joined-read-only.png) | Guest is joined and connected to an active read-only collaboration session. |

Although there are currently some shortcomings guests will experience while using the features described in this article, collaboration session hosts retain the complete functionality of their chosen tool. For more information, see:

- [Language and platform support](../reference/platform-support.md)
- [Extension support](../reference/extensions.md)
- [All major bugs, feature requests, and limitations](https://aka.ms/vsls-issues)
- [All feature requests and limitations](https://aka.ms/vsls-feature-requests)
- [Troubleshooting](../troubleshooting.md)

## Next steps

> [!div class="nextstepaction"]
> [Co-edit, follow, and focus](coedit-follow-focus-visual-studio-code.md)
