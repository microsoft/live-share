---
title: "Live Share overview"
description: "Links to Live Share documentation."
ms.custom:
ms.date: 07/16/2021
ms.reviewer: ""
ms.suite: ""
ms.topic:  "overview"
author: "fubaduba"
ms.author: "fishah"
manager: "AmandaSilver"
ms.workload: 
  - "liveshare"
---

# What is Visual Studio Live Share?

Welcome to Visual Studio Live Share! Live Share enables you to collaboratively edit and debug with others in real time, regardless of the programming languages you're using or app types you're building. You can instantly and securely share your current project, start a joint  debugging session, share terminal instances, forward localhost web apps, have voice calls, and more!

 Unlike traditional pair programming, Visual Studio Live Share allows developers to work together, while retaining their personal editor preferences (e.g. theme, keybindings), as well as having their own cursor. This allows you to seamlessly transition between following one another, and being able to explore ideas/tasks on your own. This ability to work together and independently provides a collaboration experience that feels much like _in-person_ collaboration.

Ready to get going? In this article we'll run you through some concepts and how to install the needed extensions. If you're looking for an abridged version, check out the [share](quickstart/share.md) and [join](quickstart/join.md) quickstarts.

> [!TIP]
> Did you know that you can now *join a Live Share session from the browser*? This means, you no longer need to install a desktop client to collaborate! Just click on the link shared with you and you can get a full-fidelity VS Code editor experience in the browser. Learn more [here](quickstart/browser-join.md)

## Install Visual Studio Live Share

Before you begin, you need to be sure you have a version of Visual Studio or Visual Studio Code installed that meets Live Share's core requirements.

- **Visual Studio Code 1.22.0 or higher** - Windows 7, 8.1, or 10, macOS *(only High Sierra 10.13+)*, 64-bit Linux *(64-bit Ubuntu Desktop 16.04+, Fedora 27+ recommended - [see details](use/vscode.md))*.
- **Visual Studio 2019** (any edition) - Windows 7, 8.1, or 10.
- **Visual Studio 2017 15.6 or higher** (any edition) - Windows 7, 8.1, or 10.

After that, downloading and installing the Visual Studio Live Share extension is a breeze:

|Product|Installation steps|
|-------------|------------|
|<img src="media/vs-code.svg" width="128px" alt="Visual Studio Code logo"/>|**Visual Studio Code (1.22.0+)**<br />1. Install [Visual Studio Code](https://code.visualstudio.com/) for Windows (7, 8.1, or 10), macOS **(High Sierra 10.13+)**</b>, 64-bit Linux ([details](use/vscode.md))<br />2. Download and install the Visual Studio Live Share extension from the marketplace. <br />3. Reload and wait for dependencies to download and install (see status bar).<br />4. **Linux**: If prompted to [install libraries](reference/linux.md#install-linux-prerequisites.md), click install, enter password, restart VS Code when done.<br /><a href="https://aka.ms/vsls-dl/vscode"><img src="media/download.png" alt="Download button"></a>|
|a|a|

tbd

<table style="width: 100%; border:none;">
<tr>
    <td width="128px" style="width: 128px; text-align: center; border:none;"><img src="media/vs-code.svg" width="128px" alt="Visual Studio Code logo"/></td>
    <td style="border:none;">
        <strong>Visual Studio Code (1.22.0+)</strong><br />
        1. Install <a href="https://code.visualstudio.com/">Visual Studio Code</a> for Windows (7, 8.1, or 10), macOS <b>(High Sierra 10.13+)</b>, 64-bit Linux <b>(<a href="use/vscode.md">details</a>)</b><br />
        2. Download and install the Visual Studio Live Share extension from the marketplace. <br />
        3. Reload and wait for dependencies to download and install (see status bar).<br />
        4. <strong>Linux</strong>: If prompted to <a href="reference/linux.md#install-linux-prerequisites">install libraries</a>, click install, enter password, restart VS Code when done.<br />
        <a href="https://aka.ms/vsls-dl/vscode"><img src="media/download.png" alt="Download button"></a>
    </td>
</tr>
<tr style="border:none;">
    <td width="128px" style="width: 128px; text-align: center; border:none;"><img src="media/vs-ide-2019.svg" width="128px" alt="Visual Studio 2019 logo" /></td>
    <td  style="border:none;">
        <strong>Visual Studio 2019 </strong><br />
        1. Install <a href="https://visualstudio.microsoft.com/downloads/">Visual Studio 2019</a>.<br/>
        2. Install a <a href="reference/platform-support.md">supported workload</a>. (e.g. ASP.NET, .NET Core, C++, Python, and/or Node.js)<br />
        3. Visual Studio Live Share is installed by default with these workloads. <br />
    </td>
</tr>
<tr style="border:none;">
    <td width="128px" style="width: 128px; text-align: center; border:none;"><img src="media/vs-ide-2017.svg" width="128px" alt="Visual Studio 2017 logo" /></td>
    <td  style="border:none;">
        <strong>Visual Studio 2017 15.6 or higher</strong><br />
        1. Install the latest version of <a href="https://visualstudio.microsoft.com/vs/older-downloads/">Visual Studio 2017</a> (15.6+) on Windows (7, 8.1, or 10).<br/>
        2. Install a <a href="reference/platform-support.md">supported workload</a>. (e.g. ASP.NET, .NET Core, C++, and/or Node.js)<br />
        3. Download and install the Visual Studio Live Share extension from the marketplace. <br />
        <a href="https://aka.ms/vsls-dl/vs"><img style="padding: 0; spacing: 0;" src="media/download.png" alt="Download button" ></a><br />
    </td>
</tr>
</table>

By downloading and using Visual Studio Live Share, you agree to the [license terms](https://aka.ms/vsls-license) and [privacy statement](https://www.microsoft.com/en-us/privacystatement/EnterpriseDev/default.aspx). See [troubleshooting](troubleshooting.md) if you run into problems.

That's all there is to it! You should now see a sign in status bar in the lower left in VS Code and a share button in the upper right in Visual Studio. Check out the rest of the documentation for what to do next!

## See also

Quickstarts

- [Share your first project](quickstart/share.md)
- [Join your first session](quickstart/join.md)

How-tos

- [Collaborate using Visual Studio Code](use/vscode.md)
- [Collaborate using Visual Studio](use/vs.md)

Reference

- [Connectivity requirements for Live Share](reference/connectivity.md)
- [Security features of Live Share](reference/security.md)
- [Language and platform support](reference/platform-support.md)
- [Extension support](reference/extensions.md)
- [Release Notes](https://aka.ms/vsls-releases)

Having problems? See [troubleshooting](troubleshooting.md) or [provide feedback](support.md).
