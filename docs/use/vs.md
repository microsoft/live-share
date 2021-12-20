---
title: Install and sign in to Live Share in Visual Studio
description: Learn how to install and sign in to Visual Studio and Live Share so that you can collaborate on projects with your team.
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

# How-to: Install and sign in to Live Share in Visual Studio

Ready to get collaborating with Live Share in Visual Studio? If so, you're in the right spot! In this article we'll walk you through how to use some of the specific features in the Visual Studio Live Share extension for Visual Studio.

Note that all collaboration activities described here involve a single **collaboration session host** and one or more **guests**. The host is the person that started the collaboration session and anyone that joins is a guest.

*Looking for an abridged summary? Check out the [share](../quickstart/share.md) or [join](../quickstart/join.md) quickstarts instead.*

> [!TIP]
> Did you know you can *join your own collaboration session*? This allows you to try Live Share on your own or to spin up an instance of Visual Studio or VS Code and connect to it remotely! You can even use the same identity on both instances. Check it out!

## Installation

Before you begin, you'll need to install **Visual Studio 2019** or  **Visual Studio 2017 15.6 or higher** on Windows 7, 8.1, or 10. *However, Visual Studio 15.7+ is recommended as this enables local undo/redo support.*

Getting going is simple:

For Visual Studio 2019
1. Install any edition of [Visual Studio 2019](https://visualstudio.microsoft.com/vs/).
2. Install a [supported workload](../reference/platform-support.md). (e.g. ASP.NET, .NET Core, C++, Python, and/or Node.js)
3. Visual Studio Live Share is installed by default with these workloads.

For Visual Studio 2017
1. Install any edition of [Visual Studio 2017](https://visualstudio.microsoft.com/vs/older-downloads/) 15.6+.
2. Install a [supported workload](../reference/platform-support.md). (e.g. ASP.NET, .NET Core, C++, and/or Node.js)
3. [Download](https://aka.ms/vsls-dl/vs) and install the Visual Studio Live Share extension from the marketplace.

By downloading and using Visual Studio Live Share, you agree to the [license terms](https://aka.ms/vsls-license) and [privacy statement](https://www.microsoft.com/en-us/privacystatement/EnterpriseDev/default.aspx). See [troubleshooting](../troubleshooting.md) if you run into problems.

[![Download Live Share](../media/download.png)](https://aka.ms/vsls-dl/vs)

## Sign in

In order to collaborate, you'll need sign into Visual Studio Live Share so everyone knows who you are. This is purely a security measure and does **not** opt you into any marketing or other research activities. You can sign in using a Microsoft personal account (e.g. @outlook.com), Microsoft-backed work or school account (AAD), or a GitHub account. Signing in is easy.

By default Visual Studio uses your [personalization account](/visualstudio/ide/signing-in-to-visual-studio) so if you're already logged into Visual Studio, you may be able to skip this step. Otherwise sign as you would normally.

![VS sign in button](../media/vs-sign-in-button.png)


If you want to use a different sign-in than your Visual Studio [personalization account](/visualstudio/ide/signing-in-to-visual-studio), go to **Tools &gt; Options &gt; Live Share &gt; User account** to switch credentials.

![VS Tools Options Live Share](../media/vs-tools-options-new.png)

Selecting **External Account** allows you to select an account not supported by Visual Studio's personalization feature like GitHub. A browser will automatically appear the first time you use a Live Share feature so you may complete sign in.
>[!Tip]
>Did you know can go to **Tools &gt; Options &gt; Live Share &gt; General** to view all the default Live Share settings? Customize your collaboration experience to your needs! You can also try all the new Live Share features by choosing **Advanced &gt; Features &gt; Insiders** from inside the General Live Share settings!  

If you run into trouble, check out [troubleshooting](../troubleshooting.md#sign-in) for more tips.

## Guest limitations

While there are currently some shortcomings guests will experience while using the features described in these articles, collaboration session hosts retain the complete functionality of their tool of choice. See the following for more information:

- [Language and platform support](../reference/platform-support.md)
- [Extension support](../reference/extensions.md)
- [All major bugs, feature requests, and limitations](https://aka.ms/vsls-issues)
- [All feature requests and limitations](https://aka.ms/vsls-feature-requests)

## Next Steps

> [!div class="nextstepaction"]
> [Share a project and join a session](share-project-join-session-vs.md)
