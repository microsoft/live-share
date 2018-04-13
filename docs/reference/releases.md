---
title: "Release Notes -  Visual Studio Live Share | Microsoft Docs"
description: "A breakdown of changes by release for Visual Studio Live Share for VS and VS Code."
ms.custom:
ms.date: 03/22/2018
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "liveshare"
ms.topic: "reference"
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

# Visual Studio Live Share Release Notes

What to know what has changed recently? You're in the right spot. You can also view this same information from the releases tab on our [GitHub repo](https://aka.ms/vsls-releases).  

## v0.2.388 (Visual Studio / VS Code)

This release introduces new platform support, some experimental features , and a number of user-reported issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 💯

### Enhancements

1. **VS Code Linux Support** (#24) 🐧👏🎉 - As our most requested feature, this is the first release to introduce support for VS Code on Linux. There are some **pre-requisites** that need to be installed so check out the **[installation documentation](https://aka.ms/vsls-docs/vscode/install)** for details.

2. **Experimental features** 🔬⚗ - To enable experimental features for VS Code, add `"liveshare.experimentalFeaturesEnabled": true` to settings.json in VS Code. To enable experimental features for VS, go to Tools > Options > Live Share and set "Experimental features enabled" to true. Bug reports and feedback is still welcome.

    1. **Shared terminal** (#41) - Shared terminal support has been added and is available from the command palette / scoped command in VS Code or from the share button dropdown in VS. Shared terminals currently have fixed dimensions across all participants.

    2. **Add/delete/rename files** (#44) - Hosts and guests can now add and remove files in the file explorer. VS Code users can also rename/move. (VS does not yet have rename support).

<!--    3. **Task sharing** (#40) -  `"workspaceTask": true` to .vs-liveshare-settings.json. -->
<!--2. **Join notifications** (#95) - You are now notified when someone joins the collaboration session.-->
<!--3. **Accept/reject guest** (#110) - To improve security, you can now turn on the ability to be notified when a guest and decide to either or "accept" or "reject" their request to join. To enable add `"key": true` to .vs-liveshare-settings.json. -->

### Reported Issues Fixed

1. **VS Code users not prompted to sign in when joining** (#167, #89) - A series of issues prevented the browser from appearing when a user has not signed in when joining via a browser link. This should now be resolved.

2. **Proxy issues** (#86) - We continue to chip away at proxy issues. This release includes support for using the HTTP_PROXY and HTTPS_PROXY environment variables for accessing the cloud relay (in addition to other operations as before) and adds in support for authenticated proxies (e.g. via https://username:password@proxy-ip-or-name:port). However, we are leaving this issue open as we are not yet automatically respecting OS proxy settings.

3. **VS Code corrupted extension installs** (#180, #107, #112) - More work has gone into detecting and relediating corrupted installations. We are leaving these issues open until we have confirmed from telemetry and reports that the issues are gone.

4. **VS Code Insiders crash** (#182) - The upgrade to Electron 2.0 in VS Code Insiders 1.23 caused crashes in a number of extensions including Live Share. This was rolled back, but we have now made adjustments to prevent it from happening in the future.

5. **Collaboration session prematurely expired** - Live Share was incorrectly cleaning up collaboration sessions that were still running after several days. The logic now checks for inactivity rather than just elapsed time.

## v0.2.307 (VS Code)

This release is a mix of features, foundational changes, and bug-fixes and which addresses a number of user-reported *Visual Studio Code* issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 💯

### Enhancements

1. **Pin and follow by default** (#82) 🎉 - Historically you've had to explicitly pin to start following the host when you join a collaboration session. To reduce a step, this is now on by default when you join. As before, clicking, selecting, editing, switching files, or clicking the pin icon unpins the host so you can operate independently.

2. **Improved Debugger Compatibility** - A number of foundational updates have been made that should improve overall compatibility along with support for using the `postDebugTask` option. This should unblock a number of scenarios including the following platforms:

    - C++ and Unreal Engine 4 (#170)
    - Dart
    - IoT Edge
    - Dynamics AL (#138)

### GitHub Reported Issues Fixed (VS Code) 🚀

1. **Joining a session via the browser does not join if VS Code not in Applications** (#174) - We had various reports of joining not working from the browser if VS Code was present outside of the Applications folder when the extension was installed on macOS 10.12 and up due to "[App Translocation](http://krypted.com/mac-security/app-translocation-services-os-x-10-12/)". This should now be resolved.

2. **Installation validation improvements** (#112) - We've received a number of reports of users hitting a `Could not load file or assembly 'XXXXXX, Version=X.X.X.X` error after installing dependencies. We've added validations to ensure the needed dependencies are on disk before calling the install successful.

## v0.2.306 (Visual Studio)

This release is a mix of minor features, foundational changes, and bug-fixes and which addresses a number of user-reported *Visual Studio 2017* issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve!  💯

### Enhancements

1. **Pin and follow by default** (#82) 🎉 - Historically you've had to explicitly pin to start following the host when you join a collaboration session. To reduce a step, this is now on by default when you join. As before, clicking, selecting, editing, switching files, or clicking the pin icon unpins the host so you can operate independently.

### Reported Issues Fixed (Visual Studio) 🚀

1. **Incorrect error message when user is not signed up** (#160) - A bug in the a new firewall check in 0.2.258 on Windows broke the correct message that should appear for VS users attempting to share who are not in the preview. They instead say "Failed to create a collaboration session. Operation was cancelled..." This is now fixed.

2. **C# files show up as JavaScript when debugging** - When debugging, certain places in the Visual Studio debugger incorrectly reported C# files being debugged as JavaScript.

## v0.2.260 (VS Code)

This is another bug-fix release, which addresses a number of user-reported *Visual Studio Code* issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 💯

### GitHub Reported Issues Fixed (VS Code) 🚀

1. **Synchronizing conditional breakpoints** (#65) 🎉- We had previously enabled participants to synchronize breakpoints, and in this release, you can share conditional breakpoints as well (using either condition expressions and/or hit counts). Additionally, if you disable/enable breakpoints, that state will also be reflected in all participant's IDE.

1. **System proxy support** (#86) - VS Code now respects the standard proxy environment variables (e.g. `http_proxy`) when making network calls. We believe this will unblock a bunch of users behind proxies, however, we still need to add support for authenticated proxies, so we're leaving this issue open.

### Other Enhancements

1. **Share while debugging** 🎉 - You can now start a collaboration session *while* actively debugging, as opposed to needing to restart your debugger in order to share. Besides being a UX improvement, this enables a key scenario for Live Share: the ability to share your current context with someone, while sitting at a breakpoint/exception that may be difficult to reproduce. Visual Studio already supported this, and so this release brings parity to VS Code.

1. **Windows firewall notification** - When sharing for the first time, the Live Share extension will determine whether it can accept incoming connections from guests, and if not, notify you about the need to grant it permissions with the Windows firewall. This way, users aren't surprised with the firewall dialog, without understanding why they're getting it.

1. **Launching the debug target in a terminal** - Collaborative debugging now works when your launch configuration sets the `console` property to either `integratedTerminal` or `externalTerminal`. We previously only supported the default `debugConsole` value, and so this enhancement unblocks apps which need to receive input from the terminal in order to debug. This is key to supporting console/CLI app development.

## v0.2.258 (Visual Studio)

This is another bug-fix release, which addresses a number of user-reported *Visual Studio 2017* issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 💯

### GitHub Reported Issues Fixed (Visual Studio) 🚀 
 
1. **Synchronizing conditional breakpoints** (#65) 🎉- We had previously enabled participants to synchronize breakpoints, and in this release, you can share conditional breakpoints as well (using either condition expressions and/or hit counts). Additionally, if you disable/enable breakpoints, that state will also be reflected in all participant's IDE.

1. **System proxy support** (#86) - VS Code now respects the standard proxy environment variables (e.g. `http_proxy`) when making network calls. We believe this will unblock a bunch of users behind proxies, however, we still need to add support for authenticated proxies, so we're leaving this issue open.

1. **PowerShell debugging** (#71) - We resolved a hang when trying to collaboratively debug a PowerShell project.

### Other Enhancements

1. **Windows firewall notification** - When sharing for the first time, the Live Share extension will determine whether it can accept incoming connections from guests, and if not, notify you about the need to grant it permissions with the Windows firewall. This way, users aren't surprised with the firewall dialog, without understanding why they're getting it.

## v0.2.208 (Visual Studio)

This is another bug-fix release, which addresses a number of user-reported *Visual Studio 2017* issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 💯
 
### Reported Issues Fixed (Visual Studio) 🚀 
 
1. **Proxy support** (#86) - VS now uses  default credentials when authenticating to proxies.  However, we are leaving the issue open while we track down a more consistent and permanent fix.

1. **Stability fixes** - The release also fixes a number of other issues including ensuring the locals pane is populated when VS is the host, improving the reliability of using direct connections in "auto" mode, improved connection error messages, and a number of telemetry reported issues.

## v0.2.206 (VS Code)

This is another bug-fix release, which addresses a number of user-reported *Visual Studio Code* issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 💯
 
### GitHub Reported Issues Fixed (VS Code) 🚀 
 
1. **Launcher fails to start VS Code after clicking “Open” in Chrome on Windows 7** (#103)

1. **"Dependencies could not be installed" error** when installing the VS Live Share w/multiple windows open (#124)

1. **"Could not update extension binaries execution permissions" error** when running VS Code after installing the Live Share extension (#107)

1. **Live Share does not properly activate** when run on Mac with a case sensitive file system (#119)
 
1. **Proxy support** (#86) - We discovered this bug is partly due to a VS Code issue (Microsoft/vscode#12588) and setting the HTTP_PROXY and HTTPS_PROXY environment variables globally can resolve the issue for some Live Share users. We are, however, leaving the issue open while we track down a more consistent and permanent fix.

1. **Recent folder/file list shows temp locations** of ended collaboration sessions (#66)

## v0.2.151 (VS Code)

This is a patch release for a critical issue when installing the Live Share extension with the 32-bit version of VS Code. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 🤕🛠😃💯

### GitHub Reported Issues Fixed (VS Code) �� 

1. **VS Code x86** - No Sign In and Share Button (#102)

## v0.2.131 (VS Code / Visual Studio)

This is mostly a bug-fix release *for both Visual Studio 2017 and Visual Studio Code*, however, we also addressed a couple of highly-requested Visual Studio Code enhancements as well. Thanks for all the amazing feedback thus far, and please keep it coming! 💯

### Feature Enhancements (VS Code) 🚀 

1. **Breakpoint synchronization** (#42) - Upon joining, guests will now be able to see any existing breakpoints that the host has set. Additionally, all participants will be able to add/remove breakpoints, and have them synchronized with everyone else within the collaboration session. This was already supported in Visual Studio, and now works correctly between Visual Studio and Visual Studio Code.

   ![Breakpoint synchronization animation](https://user-images.githubusercontent.com/116461/36178789-e6e4b3ee-10ce-11e8-9f77-79099919e9f9.gif)

2. **Extension size reduction** (#58) - In order to make your initial installation quicker, we no longer package our platform-specific dependencies in the extension, and instead, delay-download them once you reload VS Code. This behavior is more inline with how other extensions behave (e.g. C#) and provides an overall smoother acquisition experience.

## v0.2.64 (VS Code / Visual Studio)

This is the initial "insiders" build for the private preview release of Visual Studio Live Share. This release includes support for:

1. **Sharing and joining** using a Microsoft work, school, or personal account or GitHub account

2. **Co-editing for up to 5 people**

3. **Full intellisenese** for C#, JavaScript, and TypeScript with basic support for others ([see here for details](http://aka.ms/vsls-docs/platform-support))

4. **Ability to "pin"** to another participant to follow them as they edit

5. **Co-debugging**

6. **Sharing local servers**

7. **Automatic web app sharing** from VS

8. **File explorer integration** 

Other limitations of note:

1. **Breakpoint sync'ing** is not working for VS Code

2. **Solution view** is not available for guests in Visual Studio

3. **File operations** (add, remove, rename) are not supported for guests

See [language/platform support](http://aka.ms/vsls-docs/platform-support) and [known issues](http://aka.ms/vsls-issues) for full details.

## See also

Quickstarts

- [Share your first project](../quickstart/share.md)
- [Join your first session](../quickstart/join.md)


How-tos

- [Collaborate using Visual Studio Code](../use/vscode.md)
- [Collaborate using Visual Studio](../use/vs.md)

Reference

- [Connectivity requirements for Live Share](connectivity.md)
- [Language and platform support](platform-support.md)
- [Extension support](extensions.md)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
