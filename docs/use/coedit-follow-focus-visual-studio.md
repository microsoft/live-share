---
title: Coedit, follow, and focus in Visual Studio
titleSuffix: Live Share
description: Learn how to coedit, follow, and focus in collaboration sessions using Visual Studio and Live Share.
ms.date: 06/21/2022
ms.reviewer: mikejo5000
ms.topic: how-to
author: fubaduba
ms.author: fishah
manager: jmartens
ms.custom: devdivchpfy22
---

<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Coedit, follow, and focus in a collaboration session in Visual Studio

Once you're in a collaboration session, you can coedit with a guest or follow a colleague. You can also use a notification to focus attention on your work.

## Coedit

Once a guest has joined a collaboration session, the collaborators can immediately see each other's edits and selections in real time. Just pick a file from the file explorer and start editing. Both hosts and guests see edits as they're made. All participants can contribute, making it easy to iterate and rapidly nail down solutions.

> [!NOTE]
> Joining a read-only collaboration session prevents guests from being able to make edits to files. A host can [enable read-only mode when they share](share-project-join-session-visual-studio.md#share-a-project). As a guest, you can tell if you have joined a read-only session by looking at your [session state](share-project-join-session-visual-studio.md#session-states).

:::image type="content" source="../media/vs-coedit.png" alt-text="Screenshot that shows an example of coediting.":::

> [!NOTE]
> Coediting has a few limitations for certain languages. See [platform support](../reference/platform-support.md) for the state of features by language.

Beyond cursors and edits, selections you make are also visible to all participants in that same file. This visibility makes it easy to highlight where problems might exist or convey ideas.

:::image type="content" source="../media/vs-highlight.png" alt-text="Screenshot that shows an example of highlighting during coediting.":::

Better yet, you and other participants can navigate to any file in the shared project. You can choose to edit together or independently. Seamlessly switch between investigation, making small tweaks, and full collaborative editing.

> [!NOTE]
> By default, Live Share shares opened files external to the shared solution as well. If you want to disable this feature, update **Share External Files in Tools > Options > Live Share** to **False**.

The resulting edits persist on the host's machine on save. There's no need to synchronize, push, or send files around once you're done editing. The edits are immediately there.

> [!TIP]
> Given all participants can independently navigate and edit files, as a host, you might want to restrict which files guests can access in your project via a *.vsls.json* file. As a guest, it is also important to realize you might not see certain files as a result of these settings. See [controlling file access and visibility](../reference/security.md#controlling-file-access-and-visibility) for details.

### Changing participant flag behaviors

By default, Visual Studio Live Share automatically displays a *flag* next to a participant's cursor on hover. The flag also displays when they edit, highlight, or move their cursor. You might prefer to change this behavior. To do so:

1. Go to **Tools > Options > Live Share**.
2. Change the **Flag visibility** option to one of the following:

| Option | Behavior |
|--------|----------|
| OnHoverOnly | The flag is only visible when you hover over the cursor. |
| OnHoverOrActivity | This option is the default. The flag is visible on hover or if the participant edits, highlights, or moves their cursor. |
| Always | The flag is always visible.

## Following

Whenever you're in a collaboration session, you can see each participant's initials in the upper-right corner of the editor next to the sign-in button. Hovering over the initials shows you the participant's complete information.

:::image type="content" source="../media/vs-person.png" alt-text="Screen shot showing user":::

Sometimes you might need to explain a problem or design that spans multiple files or locations in code. In these situations, it can be useful to temporarily follow a colleague as they move throughout the project. When you join a collaboration session as a guest, you'll automatically *follow* the host. When following a participant, your editor will stay in sync with their currently open file, cursor, and scroll position.

> [!NOTE]
> By default, Live Share also shares opened files external to the shared solution. If you want to disable this feature, update Share External Files in **Tools > Options > Live Share** to **False**.

To switch out of *follow mode* and start editing on your own, stop following the host. You’ll stop following if:

1. You edit, move your cursor, or make a selection.
2. You select another file.

You can also stop following at any time by clicking the initials of the person you're following in the upper right-hand corner. The circle around the participant's initials that indicates you're following them will then disappear.

![Screenshot that shows a Visual Studio participant being followed.](../media/vs-pinned.png) ![Screenshot that shows a Visual Studio participant not being followed.](../media/vs-pin-hover.png)

You can click on any initials in this same location to follow any host or guest in the collaboration session. If you just want to jump to someone's location rather than following them, double-click their initials.

## Focusing

Sometimes you might want everyone in a collaboration session to come and look at something you're doing. With Live Share, you can ask that everyone *focus* their attention on you with a notification. The notification makes it easy for them to follow you back.

Just click on the **session state** button in the upper right-hand corner and select **Focus Participants**.

![Screenshot that shows the Focus menu options.](../media/vs-focus.png)

Everyone in the collaboration session will then get a notification that you've requested their attention.

:::image type="content" source="../media/vs-focus-toast.png" alt-text="Screenshot that shows an example of a Focus request notification.":::

They can click **Follow** right from the notification when they're ready to put their focus on you.

## Next steps

> [!div class="nextstepaction"]
> [Co-debug](codebug-visual-studio.md)
