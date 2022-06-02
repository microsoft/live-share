---
title: Install & sign in to Live Share in Visual Studio
titleSuffix: Live Share
description: Learn to install and sign in to Visual Studio and Live Share so that you can collaborate on projects with your team.
ms.date: 02/06/2022
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

# Install and sign in to Live Share in Visual Studio

Ready to get collaborating with Live Share in Visual Studio? If so, you're in the right spot! In this article, we'll show you how to install the Visual Studio Live Share extension for Visual Studio.

All collaboration activities described in this series of articles involve a single **collaboration session host** and one or more **guests**. The host is the person that started the collaboration session and anyone that joins is a guest.

*Looking for an abridged summary? Check out the [share](../quickstart/share.md) or [join](../quickstart/join.md) quickstarts instead.*

> [!TIP]
> Did you know you can *join your own collaboration session*? This allows you to try Live Share on your own or to spin up an instance of Visual Studio or VS Code and connect to it remotely! You can even use the same identity on both instances. Check it out!

## Installation

Before you begin, you'll need to install **Visual Studio 2019** or  **Visual Studio 2017 15.6 or higher** on Windows 7, 8.1, 10, or 11. *However, Visual Studio 15.7+ is recommended as this version enables local undo/redo support.*

Getting going is simple:

For Visual Studio 2019

1. Install any edition of [Visual Studio 2019](https://visualstudio.microsoft.com/vs/).
2. Install a [supported workload](../reference/platform-support.md#visual-studio), like ASP.NET, .NET Core, C++, Python, or Node.js.
3. Visual Studio Live Share is installed by default with these workloads.

For Visual Studio 2017

1. Install any edition of [Visual Studio 2017](https://visualstudio.microsoft.com/vs/older-downloads/) 15.6+.
2. Install a [supported workload](../reference/platform-support.md) like ASP.NET, .NET Core, C++, or Node.js.
3. [Download](https://aka.ms/vsls-dl/vs) and install the Visual Studio Live Share extension from the marketplace.

By downloading and using Visual Studio Live Share, you agree to the [license terms](https://aka.ms/vsls-license) and [privacy statement](https://www.microsoft.com/en-us/privacystatement/EnterpriseDev/default.aspx). See [troubleshooting](../troubleshooting.md) if you run into problems.

[![Download button for Live Share.](../media/download.png)](https://aka.ms/vsls-dl/vs)

## Sign in

To collaborate, you'll need to sign into Visual Studio Live Share so everyone knows who you are. This sign-in is purely a security measure and does **not** opt you into any marketing or other research activities. You can sign in using:

- A Microsoft personal account like outlook.com
- A Microsoft-backed work or school account like Azure Active Directory (Azure AD)
- A GitHub account.

Visual Studio uses your [personalization account](/visualstudio/ide/signing-in-to-visual-studio) by default. If you're already logged in to Visual Studio, you can skip this step. Otherwise, sign in as you normally would.

![Screenshot that shows the Visual Studio sign in button.](../media/vs-sign-in-button.png)

If you want to use a different sign-in than your Visual Studio [personalization account](/visualstudio/ide/signing-in-to-visual-studio), go to **Tools > Options > Live Share > General**. Select **User account**, and then select the ellipses to the right to switch credentials.

![Screenshot that shows the Visual Studio Tools options for Live Share.](../media/vs-tools-options-new.png)

Selecting **External Account** allows you to select an account not supported by Visual Studio's personalization feature, like GitHub. A browser automatically appears the first time you use a Live Share feature so you can complete your sign-in.

>[!TIP]
>Did you know can go to **Tools > Options > Live Share > General** to view all the default Live Share settings? Customize your collaboration experience to your needs! You can also try the new Live Share features by choosing **Advanced > Features > Insiders** from inside the General Live Share settings!  

If you run into trouble, check out [troubleshooting](../troubleshooting.md#sign-in) for more tips.

## Guest limitations

There are currently some shortcomings guests will experience using the features described in these articles. But collaboration session hosts keep the complete functionality of their tool of choice. For more information, see:

- [Language and platform support](../reference/platform-support.md)
- [Extension support](../reference/extensions.md)
- [All major bugs, feature requests, and limitations](https://aka.ms/vsls-issues)
- [All feature requests and limitations](https://aka.ms/vsls-feature-requests)

## Next Steps

> [!div class="nextstepaction"]
> [Share a project and join a session](share-project-join-session-visual-studio.md)
