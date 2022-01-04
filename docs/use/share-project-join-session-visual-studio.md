---
title: Share a project and join a session in Visual Studio
description: Learn how to share a project and join a session to collaborate by using Visual Studio and Live Share.
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

# Share a project and join a collaboration session in Visual Studio

After installing and signing into Visual Studio Live Share, share a project and start a collaboration session with your team.

## Share a project

Follow these steps to start a collaboration session and invite a colleague to work with you.

1. **Sign in**

    Now that you are signed in, you are ready to start your own collaboration session.
    Not signed in? Check [sign in](install-live-share-visual-studio.md#sign-in) for more details.

2. **Open a solution, project, or folder**

    Use your normal workflow to open a folder, project, or solution you would like to share with your guests.

3. **[Optional] Update hidden or excluded files**

    By default, Live Share **hides** any files or folders referenced in *.gitignore* files in your project from guests. **Hiding** a file prevents it from appearing in the file tree while **excluding** it stops it from being transmitted even during operations like debugging. If you want to hide or exclude different files, a **.vsls.json** file can be added to your project with these settings. See [controlling file access and visibility](../reference/security.md#controlling-file-access-and-visibility) for details.

4. **Start a collaboration session**

    Select the **Live Share** button in the upper right hand corner to start a Live Share session. A shareable link to your collaboration session is automatically copied to your clipboard.

    :::image type="content" source="../media/share-project-join-session-vs/vs-live-share-logged-in.png" alt-text="Screenshot that shows the Live Share button while logged in to Visual Studio.":::

    Once you start your collaboration session for the first time you will see a Live Share tool window. Make sure you dock this window to ensure it shows up the next time you start a Live Share session.

   :::image type="content" source="../media/share-project-join-session-vs/vs-live-share-window.png" alt-text="Screenshot that shows the Live Share tool window in Visual Studio.":::

    > [!NOTE]
    > You may be asked by your desktop firewall software to allow the Live Share agent to open a port the first time you share. Accepting this is entirely optional but enables a secured *direct mode* to improve performance when the person you are working with is on the same network as you are. See [changing the connection mode](../reference/connectivity.md#changing-the-connection-mode) for details.

5. **[Optional] Enable read-only mode**

    Once you start your collaboration session, you can set the session to be read-only. This mode prevents guests from making edits to the code you're sharing.

    After sharing, you will get a notification that the invite link has been copied to your clipboard. You can then select the option to make the session read-only.

    :::image type="content" source="../media/share-project-join-session-vs/vs-make-read-only-banner.png" alt-text="Screenshot that shows the 'Make read-only' option in the invitation link banner.":::

6. **Send someone the link**

    Send the link over e-mail, Slack, Skype, or another communication app to those you want to invite. Given the level of access Live Share sessions can provide to guests, **you should only share with people you trust**. Think carefully about the implications of what you are sharing.

    > **Security Tip:** Want to understand the security implications of some of Live Share's features? Check out the [security](../reference/security.md) article.

    If the guest you invited has questions, the [Quickstart: Join your first session](../quickstart/join.md) article provides more information on getting up and running as a guest.

7. **[Optional] Approve the guest**

    By default, guests automatically join your collaboration session and you'll be notified when they're ready to work with you. This notification gives you the option to remove them from the session. However, you can also require an explicit *approval* for anyone joining.

    Go to **Tools > Options > Live Share >**, then change **Require guest approval** to **True** to enable the feature. Once you have this setting turned on, a notification prompts you to approve the guest before they can join.

    ![Visual Studio join approval request](../media/vs-join-approval.png)

    See [invitations and join access](../reference/security.md#invitations-and-join-access) for additional details on invitation security considerations.

8. **Manage your Live Share session**

    Once your guest has opened the link to your shared session in VS Code or Visual Studio you will see them listed under participants in the Live Share tool window. You are now able to see which file your guest is currently in next to their name.  

    ![VS Live Share tool window showing participant](../media/vs-live-share-tool-window-participant.png)

    The Live Share tool window allows you to access all key features to manage your session in one place. 

    > [!TIP]
    > Can't see the Live Share tool window anymore during your sessions? You can always select **Sharing > View Live Share Window** to open it!

### End the collaboration session

As a host, you can stop sharing completely and end the collaboration session by selecting the **Sharing** button in the upper right-hand corner and selecting **End Live Share Session**.

:::image type="content" source="../media/share-project-join-session-vs/vs-end-live-share-session.png" alt-text="Screenshot that shows selecting Sharing, then selecting End Live Share Session from the drop-down.":::

All guests are notified that the session has ended. Once the session has ended, guests can no longer access the content and any temp files are automatically cleaned up.

Having issues with sharing? Check out [troubleshooting](../troubleshooting.md#share-and-join).

## Join a collaboration session

After downloading and installing Visual Studio Live Share, guests only need to take a couple steps to join a hosted collaboration session. There are two ways to join: [via the browser](#join-via-the-browser) or [manually](#join-manually).

> **Security Tip:** As a guest joining a collaboration session, it's important to understand that hosts might restrict your access to certain files or features. Want to understand the security implications of some of Live Share's features and settings? Check out the [security](../reference/security.md) article.

### Join via the browser

The easiest way to join a collaboration session is to open the invite link in a web browser. Here's what you can expect when you follow this flow.

1. **Sign in**

    After installing the Live Share extension, you'll want to sign in to let other collaborators know who you are. By default Visual Studio uses your personalization account, so you might be able to skip this step.

    See [sign in](install-live-share-visual-studio.md#sign-in) for more details.

2. **Click on the invite link or open the invite in your browser**

    Open, or re-open, the invite link in a browser.

    > [!NOTE]
    > If you haven't installed the Live Share extension, you're presented with links to the extension marketplace. Install the extension, restart your tool, and retry.

    You'll be notified that the browser wants to launch a Live Share enabled tool. If you let it launch your selected tool, you'll be connected to the collaboration session once it starts.

    ![Join page](../media/join-page.png)

    If the host is offline, you'll be notified at this point instead. You can contact the host and ask them to share again.

    > [!NOTE]
    > Still having trouble? See [join manually](#join-manually).

3. **Collaborate**

    That's it!! In a few moments you'll be connected and you can start collaborating.

    You'll see the **Live Share** button transition to convey a *Session State*. See [session state](#session-states) information below for what this looks like.

    You're automatically taken to the file the host is currently editing once the join is complete.

### Join manually

You can also manually join without using a web browser. Manual joining can be useful in situations where the tool you want to use is already running. You might also use manual joining if you want to use a different tool than you usually do, or if you are having trouble with getting invite links to work for some reason.

1. **Sign in**

    After installing the Live Share extension, you'll want to sign in to let other collaborators know who you are. By default Visual Studio uses your personalization account, so you might be able to skip this step entirely.

    See [sign in](install-live-share-visual-studio.md#sign-in) for more details.

2. **Use the join command**

    Go to **File > Join Live Share Session**.

    ![VS Join menu](../media/vs-join.png)

3. **Paste the invite link**

    Paste in the invite URL and confirm.

4. **Collaborate!**

    That's it! You should be connected to the collaboration session momentarily.

    You'll see the **Live Share** button transition to convey a *Session State*. See [session state](#session-states) information below for what this looks like.

    You're automatically taken to where the host is currently editing once the join has completed.

### Leave the collaboration session

As a guest, you can leave the collaboration session without ending it for others by closing the tool or by clicking the **Sharing** button and selecting **Leave Live Share Session**.

![VS Join menu when leaving](../media/vs-leave-session.png)

Any temp files are automatically cleaned up so no further action is needed.

Having issues with joining? Check out [troubleshooting](../troubleshooting.md#share-and-join).

## Session states

After you have started or joined a collaboration session and have access to shared content, the "Live Share" button in the upper right hand corner updates its appearance to reflect the state of the active collaboration session.

The following are the states you will typically see:

| State | Button | Description |
|-------|--------|-------------|
| Inactive | ![VS status: inactive](../media/vs-status-share.png) | No active collaboration session and nothing is shared. |
| Host: Sharing In-Progress | ![VS status: share in progress](../media/vs-status-sharing.png) | A collaboration session is starting and content sharing will begin shortly. |
| Host: Sharing | ![VS status: sharing active ](../media/vs-status-active.png) | A collaboration session is active and content is shared. |
| Host: Sharing Read-only | ![VS status: sharing read-only](../media/vs-status-sharing-read-only.png)| Sharing a read-only collaboration session. |
| Guest: Joining Session | ![VS Code status: joining](../media/vs-status-joining.png) | Joining an existing collaboration session. |
| Guest: Joined | ![VS status: joined](../media/vs-status-joined.png) | Joined and connected to an active collaboration session and receiving shared content. |
| Guest: Joined Read-only | ![VS status: joined read-only](../media/vs-status-joined-read-only.png) | Joined and connected to an active read-only collaboration session. |

## Next steps

> [!div class="nextstepaction"]
> [Co-edit, follow, and focus](coedit-follow-focus-visual-studio.md)
