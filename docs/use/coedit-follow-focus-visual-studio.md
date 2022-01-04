---
title: Co-edit, follow, and focus in a collaboration session in VS
description: Learn how to co-edit, follow, and focus in collaboration sessions with Visual Studio and Live Share.
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

# Co-edit, follow, and focus in a collaboration session in Visual Studio

Once you're in a collaboration session, you can co-edit with a guest or follow a colleague. You can also use a notification to focus attention on your work.

## Co-editing

Once a guest has joined a collaboration session, all collaborators will immediately be able to see each others edits and selections in real-time. All you need to do is pick a file from the file explorer and start editing. Both hosts and guests will see edits as you make them and can contribute themselves making it easy to iterate and rapidly nail down solutions.

> [!NOTE]
> Joining a read-only collaboration session prevents guests from being able to make edits to files. A host can [enable read-only mode when they share](share-project-join-session-visual-studio.md#share-a-project). As a guest, you can tell if you have joined a read-only session by looking at your [session state](share-project-join-session-visual-studio.md#session-states).

![Screen shot showing co-editing](../media/vs-coedit.png)

> [!NOTE]
> Co-editing has a few limitations for certain languages. See [platform support](../reference/platform-support.md) for the state of features by language.

Beyond cursors and edits, selections you make are also visible to all participants in that same file. This makes it easy to highlight where problems might exist or convey ideas.

![Screen shot showing highlighting](../media/vs-highlight.png)

Better yet, you and other participants can navigate to any file in the shared project. You can either edit together or independently meaning you can seamlessly switch between investigation, making small tweaks, and full collaborative editing.

> [!NOTE]
> By default Live Share shares opened files external to the shared solution as well. If you want to disable this feature, update Share External Files in Tools &gt; Options &gt; Live Share to False.

The resulting edits are persisted on the host's machine on save so there is no need to synchronize, push, or send files around once you're done editing. The edits are "just there."

> **Security Tip:** Given all participants can independently navigate and edit files, as a host, you may want to restrict which files guests are able to access in your project via a .vsls.json file. As a guest, it is also important to realize you may not see certain files as a result of these settings. See [controlling file access and visibility](../reference/security.md#controlling-file-access-and-visibility) for details.

### Changing participant flag behaviors

By default, Visual Studio Live Share automatically displays a "flag" next to a participant's cursor on hover, or when they edit, highlight, or move their cursor. In some cases you may prefer to change this behavior. To do so:

1. Go to **Tools > Options > Live Share**
2. Change the **Flag visibility** option to one of the following:

| Option | Behavior |
|--------|----------|
| OnHoverOnly | The flag is only visible when you hover over the cursor. |
| OnHoverOrActivity | This is the default. The flag is visible on hover or if the participant edits, highlights, or moves their cursor. |
| Always | The flag is always visible.

## Following

Whenever you are in a collaboration session, you'll be able can see each participant's initials in the upper right of the editor next to the sign in button. Hovering over the initials shows you the participant's full information.

![Screen shot showing user](../media/vs-person.png)

Sometimes you may need to explain a problem or design that spans multiple files or locations in code. In these situations, it can be useful to temporarily follow a colleague as they move throughout the project. For this reason, as a guest, when you join a collaboration session you will automatically "follow" the host. When following a participant, your editor will stay in sync with their currently open file, cursor, and scroll position.

> [!NOTE]
> By default Live Share shares opened files external to the shared solution as well. If you want to disable this feature, update Share External Files in Tools &gt; Options &gt; Live Share to False.

To make it easy to switch out of "follow mode" and start editing on your own, you'll stop following if any of the following happens:

1. You edit, move your cursor, or make a selection
2. You select another file

You can also stop following at any time by clicking the initials of the person you are following in the upper right hand corner. The circle around the participant's initials that indicates you are following them will then disappear.

![Visual Studio participant being followed](../media/vs-pinned.png) ![Visual Studio participant not being followed](../media/vs-pin-hover.png)

You can click on any initials in this same location to follow any host or guest in the collaboration session. Note that if you just want to jump to someone's location rather than following them, simply double-click their initials.

## Focusing

Occasionally you may want everyone in a collaboration session to come and take a look at something you are doing. Live Share lets you ask that everyone "focus" their attention on you with a notification that makes it easy for them to follow you back.

Just click on the session state / share button in the upper right hand corner and select "Focus Participants".

![Focus menu option](../media/vs-focus.png)

Everyone in the collaboration session will then get a notification that you've requested their attention

![Focus toast notification](../media/vs-focus-toast.png)

They can then just click "Follow" right from the notification when they're ready to put their focus on you.

## Next steps

> [!div class="nextstepaction"]
> [Co-debug](codebug-visual-studio.md)
