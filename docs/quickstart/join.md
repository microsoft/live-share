---
title: "Join quickstart  | Microsoft Docs"
titleSuffix: Live Share
description: "An abridged walkthrough on joining your first Visual Studio Live Share collaboration session."
ms.date: 01/22/2022
ms.reviewer: mikejo5000
ms.topic: quickstart
author: fubaduba
ms.author: fishah
manager: jmartens
---

# Quickstart: Join your first collaboration session

Welcome to Visual Studio Live Share! Live Share enables you to collaboratively edit and debug with others in real time, regardless what programming languages you're using or app types you're building. It allows you to instantly and  securely join a teammate's current project, and then as needed, enter into debugging sessions, view and edit terminal instances, see localhost web apps, join voice calls, and more!

Ready to get going? Team collaboration should be so quick and natural, that it becomes harder not to do it! For this reason, Visual Studio Live Share makes it simple to get started, so that you can seamlessly begin sharing your work and ideas.

> [!TIP]
> Did you know you can *join your own collaboration session*? This allows you to try Live Share on your own or to spin up an instance of Visual Studio or VS Code and connect to it remotely! You can even use the same identity on both instances. Check it out!

Just follow these steps to join a collaboration session.

## 1. Install the extension

Installing the extension is easy. Just follow these steps:

[!INCLUDE [installation](../includes/installation.md)]

## 2. [Optional] Join as a read-only guest in VS Code

In VS Code, after installing the Live Share extension, restarting, and waiting for dependencies to finish installing, you can jump in and join a collaboration session as a read-only guest.

> [!NOTE]
> If you want to make edits to the code you are joining, you'll need to sign in.

Open (or re-open) the invite link in a browser, and you will get a notification that the browser wants to launch VS Code. Let it launch, and it'll start connecting to the collaboration session.

When VS Code launches, you'll get a toast notification asking to sign in. Select "Continue as read-only guest" to join the session.

![Join as session as a read-only guest toast](../media/vscode-read-only-guest.png)

You'll be asked to enter a display name to help participants identify you in the session.

![Read-only guest name](../media/vscode-read-only-guest-name.png)

Afterwards, you'll be joined into the session as read-only. You will be able to view and navigate around the code, co-debug, and view shared servers and terminals (read-only).

> [!NOTE]
> If you want to later get read/write access to the code, you can sign in. Click on your display name in the status, bar, and select the option "Sign in".
![Read-only guest sign in](../media/vscode-read-only-guest-signin.png)
This will launch your browser, and you can choose a Microsoft or GitHub account to sign in with.

## 3. Sign in

After installing the Live Share extension, restarting, and waiting for dependencies to finish installing (VS Code), you'll want to sign in to let other participants know who you are. If you skip this step, you are asked to sign in during the join process, or can join the session as a read-only guest. Click the "Live Share" status bar item (VS Code) or "sign in" button (VS) to get started.

In Visual Studio Code:

![Visual Studio Code sign in status bar item](../media/vscode-sign-in-button-new.png)

In Visual Studio:

![Visual Studio sign in button](../media/vs-sign-in-button.png)

In **VS Code**, your browser will launch while a notification will appear launch asking you to sign in. Complete the sign in process in your browser, then simply close the browser when done.

![Toast notification asking to sign in using a web browser](../media/vscode-sign-in-toast.png)

In **Visual Studio**, Live Share automatically uses your [personalization account](/visualstudio/ide/signing-in-to-visual-studio). As a result, you can simply sign in as you would normally. However, if you'd prefer to use a different sign-in than your Visual Studio personalization account, go to **Tools &gt; Options &gt; Live Share &gt; User account** and select different credentials.

See [troubleshooting](../troubleshooting.md#sign-in) if you are still hitting problems.

## 4. Open/re-open the invite link in a browser

Now, simply open (or re-open) the invite link in a browser.

> **Note**: If you have not yet installed the Live Share extension, you'll be presented with links to the extension marketplace. Install the extension and restart your tool and retry.

You should be notified that the browser wants to launch a Live Share enabled tool. If you let it launch your selected tool, you'll be connected to the collaboration session once it starts.

![Join page](../media/join-page.png)

If the host is offline, you'll be notified at this point instead. You can then contact the host and ask them to share again.

> **Troubleshooting Tip:** When using VS Code, be sure you've **started the tool at least once** after installing the extension and waited for the dependencies to finish installing (see the status bar) before opening/re-opening the invite page. Still having trouble? See [join manually](../reference/manual-join.md) for details.

## 5. Collaborate!

That's it! In a few moments, you'll be connected to your colleague's collaboration session. By default, the host auto-accepts people that join, but if the host is set up to [require guest approval](../reference/security.md#requiring-guest-approval) you will see the status bar / join dialog mention that Live Share is waiting on the host to approve your request to join.

> **Security Tip:** As a guest joining a collaboration session, it's important to understand that hosts may restrict your access to certain files or features. Want to understand the security implications of some of Live Share's features and settings? Check out the [security](../reference/security.md) article.

Here are a few things to try out:

1. Move around the project independently and make some edits
2. Check out working intellisense for JavaScript, TypeScript, and/or C# code
3. Edit something together with the host
4. Follow the host and move around with them as they navigate and make edits in different files
5. Start up a co-debugging session with the host
6. Ask the host to share a server so you can check out something like a web app running on their machine
7. Ask the host to share a terminal and run some commands

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).

## Next Steps

Check out these additional articles for more information.

- [Quickstart: Share your first project](share.md)
- [Install and sign in to Live Share in Visual Studio Code](../use/install-live-share-visual-studio-code.md)
- [Install and sign in to Live Share in Visual Studio](../use/install-live-share-visual-studio.md)

Reference

- [Connectivity requirements for Live Share](../reference/connectivity.md)
- [Security features of Live Share](../reference/security.md)
- [Language and platform support](../reference/platform-support.md)
- [Extension support](../reference/extensions.md)
