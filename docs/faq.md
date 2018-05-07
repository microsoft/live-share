---
title: "FAQ - Visual Studio Live Share | Microsoft Docs"
description: "Frequently asked questions about Visual Studio Live Share."
ms.custom:
ms.date: 05/05/2018
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "liveshare"
ms.topic: "reference"
author: "lostintangent"
ms.author: "joncart"
manager: "AmandaSilver"
ms.workload: 
  - "liveshare"
---

<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Frequently Asked Questions

## What is Live Share?
Live Share allows developers to share a codebase and its context so you get instant, bi-directional, collaboration directly from your existing tools (Visual Studio 2017 or Visual Studio Code). With Live Share, your teammate can read, navigate, edit, and debug the project you’ve shared with them, both seamlessly and securely.

## What are the tooling requirements for using Live Share?
The [core capabilities](#what-are-the-core-capabilities-of-live-share) of Live Share are fully supported in the following  tools:

* [Visual Studio 2017 (15.6+)](https://www.visualstudio.com/vs/)
* [Visual Studio Code](https://code.visualstudio.com/)

During the preview, Live Share will be iterating quickly to respond to user feedback, which may require us to take advantage of features within Visual Studio and Visual Studio Code that are only be available in their respective preview/insider releases. We will indicate which features require more recent versions of VS or VS Code in documentation. For example, local undo/redo support requires Visual Studio 2017 15.7+.

## What are the core capabilities of Live Share?
Live Share enables you to share your codebase with your team members via a secure connection. With Live Share, you are able to collaboratively edit multiple files in a workspace and more importantly debug your application with your teammates. During co-editing your edits are immediately seen by your teammates. During co-debugging you are sharing the same debug session of your application. This means you and your teammates can control the program execution with breakpoints and steps, but you can independently inspect variables, watches, locals, and REPLs (e.g. the Immediate Window in Visual Studio).

Live Share has a wide variety of use cases such as: investigating a bug together, showing an issue that won't repro on another person's machine, solving design issues, pair programming, conducting a coding interview, mentoring other members on a team, or performing ad-hoc code reviews.

## By using Live Share, is my code stored on a Microsoft server?
No, the shared code resides solely on the machine of the developer who initiated the share. It is not stored or uploaded to the cloud in any way. Rather, Live Share simply establishes a secure connection between you and your teammates (which is encrypted end-to-end), and doesn't inspect or collect any data on the code that is shared.

## Does this remote-based model work anywhere? Is it peer-to-peer?
Live Share's only requirement is that the person sharing and their teammate each have internet access. Secure communication between team members during a collaboration session is facilitated by an Azure relay. Your workspace (i.e. source files) is not stored in the cloud. No special peer-to-peer connection is required though one might be used to reduce latency. See [changing the connection mode](http://aka.ms/vsls-docs/connection-mode) in our docs for additional details.

## What is shared during a Live Share session?
Live Share doesn't transfer all keyboard and mouse inputs. It only communicates the data needed for each collaboration activity to your teammates' machines. For example, when you share your workspace, your folder structure is shared. When you collaboratively edit a file, that file's contents are shared. When you are collaboratively debugging, debug actions (e.g. stepping) and state (e.g. call stack and locals) are shared.

## When will Live Share be released?
Live Share is available now in preview! We intend to work closely developers testing the preview bits, in order to collect feedback and ensure we can deliver the best experience possible, before opening the service more broadly. 

## How much will it cost?
We are committed to a substantive free tier of Visual Studio Live Share for developers to use on an ongoing basis. We will be evaluating the introduction of paid tiers with advanced features as we better understand the needs of the community.

## How is my code shared with other teammates?
When using Live Share, you’re making the code you’re working on available such that your teammates can access it via a secure cloud service that remotes commands from your editor. Your teammates can open and edit the files without needing to store them in the cloud or permanently store them on your teammate’s machine.

Live Share enables instant access to capabilities like the project tree, code navigation, and search. It also allows your teammates to benefit from editor enhancements such as IntelliSense.

## What happens if a user goes offline, or stops sharing?
The remote model requires that the developer sharing via Live Share and their teammate must be online to be connected. If your teammate attempts to use Live Share when you are offline, they will be unable to join the session until you are online again. Additionally, once collaboration stops (e.g. you close your editor, go offline, or stop sharing), then further actions or file access by your teammates are immediately disabled.

## What about screen sharing?
Live Share lets you share your project's code and its context. It means that your teammate can easily jump into your codebase and work with you, using their familiar tool. Your editor or other apps are not shared or viewable by your teammate, and you don’t have to change your workstyle or use a web-based app.

Live Share does not replace screen sharing where you may want to show a menu item or discuss visual aspects of your app or your editor. Instead, you have the option to use Live Share along with chat, voice, video, and screen sharing.

## What about other collaboration tools?
Live Share can be used with chat, instant messaging, or email technologies. We’ve observed that many collaborative interactions between developers start in these tools. However, when the discussion is about code, they often get to a point where it’s simply too hard to explain a problem with text, code snippets, or single files - more context is needed.

Live Share can be used for many things, such as: seeking help on an issue, resolving a bug, pair programming, conducting a coding interview, or performing an ad-hoc review before a code commit or a pull-request.

## What about other web editors?
With web-based editors, both teammates need to use the same web app to get collaborative benefits, which may not be their primary, day-to-day editor. Many web-based editors assume that you are building and deploying into a Virtual Machine often hosted in a cloud environment.

While this may be desirable for many scenarios, developers often want to collaborate on apps that aren’t hosted in a VM or in the cloud.  With Live Share, you and your teammate can use the capabilities of the tools’ ecosystem in addition to the same capabilities available in web-based editors.

Live Share goes a step further and enables you to share a debug session.  This makes it especially useful in enlisting others to help you track down issues that only happen on your machine without altering their development workflow or needing to alter the application design.


## Which languages and platforms will be supported in the preview?
However, our goal is to support the diverse landscape of languages and platforms, to ensure we can enable rich collaboration, regardless of the application type being developed. See the [language and platform support](reference/platform-support.md) article for details on what works today. This is just the start, and we expect to improve this picture moving forward based on feedback.

## What is the roadmap?
You can view the set of known issues, and roadmap items [here](http://aka.ms/vsls-issues). If you'd like to see only feature requests rather than all issues, see [here](https://aka.ms/vsls-feature-requests). We encourage you to up-vote existing items, file new feature requests, and log bug reports, in order to help us shape the direction of the product moving forward.

## See also

- [Language and platform support](platform-support.md)
- [Connectivity requirements for Live Share](reference/connectivity.md)
- [Security features of Live Share](reference/security.md)
- [All major bugs, feature requests, and limitations](https://aka.ms/vsls-issues)
- [All feature requests and limitations](https://aka.ms/vsls-feature-requests)

Having problems? See [troubleshooting](troubleshooting.md) or [provide feedback](support.md).