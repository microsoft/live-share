---
title: "Overview - Visual Studio Live Share | Microsoft Docs"
description: "New Live Share features and releases"
ms.custom:
ms.reviewer: ""
ms.suite: ""
ms.topic: "overview"
author: "fubaduba"
ms.author: "fubaduba"
ms.workload: 
  - "liveshare"
---

<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

## Integrated chat 
Live Share now has integrated chat for [Visual Studio Code](..\use\vscode.md) and [Live Share web.](..\quickstart\browser-join). This means you can chat with your peers from within your IDE.

>[!TIP]
>Live Share previously provided a companion extension. This meant users with that extension could use chat within Live Share. This extension has now been depreciated, and all users of Live Share in VS Code and the web client, will have a chat service.

### Common questions

##### Why am I seeing this error message?

If you have disabled auto-updates for your extensions (including Live Share and the Live Share companion chat extension), you will see the following error messages.

1. As the host or guest, if you had the Live Share companion chat extension installed if you see:

>Please update the `Live Share Chat` companion extension. The version installed is no longer compatible.

This error message requires you update the Live Share companion chat to use the new Integrated chat experience.
Please visit the marketplace and search for *Chat* and update to the most recent version. 

2. As a guest, if you have the latest versions of the Live Share extensions, and if you see:

>The host of this collaboration session is currently disconnected from chat or is using a version of _Live Share_ that does not support this feature. [Learn more] 

The host of your Live Share session is either using Visual Studio or other platforms to host a session, which does not support Live Share integrated chat yet. They may also be seeing error message 1. listed above.

3. As a host or guest, if you see these error message: 

> The person you are trying to contact is currently unavailable or using a version of _Live Share_ that does not support this feature. [Learn more] 

>The chat service is currently disconnected. Please try again shortly.

The host of your Live Share session is either using Visual Studio or other platforms to host a session, which does not support Live Share integrated chat yet. They may also be un available right now. They may also be seeing error message 1. listed above.


**In order to user Integrated chat you need to have auto-updates for your Live Share extensions on.** 
