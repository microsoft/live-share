---
title: "Release Notes -  Visual Studio Live Share | Microsoft Docs"
description: "A breakdown of changes by release for Visual Studio Live Share for Visual Studio and VS Code."
ms.custom:
ms.date: 05/7/2018
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

## v0.3.92 (VS Code / Visual Studio)

**This is our first public preview release!!**  It is a major feature release that also includes bug-fixes to addresses a number of user-reported issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 💯

### Enhancements

1. **Improved language support for intellisense** 🎉 - Intellisense is now available for more languages including Python, C++, and more. See [platform support](platform-support.md) for details.

2. **Multi-guest intellisense** 👩👨😺 (#47) - Originally only the first guest got full intellisense for supported languages. Now all participants get it!

3. **Shared terminals** 👩‍💻 (#41) - Hosts can now share a read-only or read/write terminal with participants. The read/write terminal supports collaborative input for ease of use and improved security (since the host can intervene if they see anything they don't like). Learn more: [![VS Code](../media/vscode-icon-15x15.png)](../use/vscode.md#share-a-terminal) [![VS](../media/vs-icon-15x15.png)](../use/vs.md#share-a-terminal)

4. **Focus Participants** 👁‍🗨 (#73) - You can now send a toast notification to all other participants in a collaboration session asking them to follow you. Learn more: [![VS Code](../media/vscode-icon-15x15.png)](../use/vscode.md#focusing) [![VS](../media/vs-icon-15x15.png)](../use/vs.md#focusing)

5. **Excluded (host-only) and hidden file support** 🙈 (#52) - You can now use a .vsls.json file to exclude or hide certain files or alter how Visual Studio Live Share processes the contents of .gitignore files in your shared folders. See the [security article](https://aka.ms/vsls-docs/security) for details. Note that we do have an open issue for case sensitive filesystems (e.g. Linux) with this feature we are working to resolve ASAP.

6. **Join notifications and guest approval mode** 👍👎 (#110) - As a host, Live Share now tells you when a participant joins and gives you the option to remove them. If you'd prefer, you can switch into "guest approval mode" where the  explicitly approve each participant that joins. See the [security article](https://aka.ms/vsls-docs/security) for details.

7. **Guest support for file operations** 📁 (#44) - Guests can now add and remove files and updates made by the host will show up in the guest's editor.

8. **Local undo/redo** ✏ (#4) - Undo and redo is now local to you as a user instead of global in VS Code and Visual Studio **15.7+**. (VS 15.6 is still global undo the needed underlying infrastructure changes are not there.) No more troubles with accidentally undoing a change made by another participant!

9. **Access to participant list in VS Code, removal of "jump-to" in favor of follow** 👓 (#185) - To make it easier to find people, we've altered the status bar item that shows the number of participants to always show a list of participants and where they are located if clicked. There is also a "List Participants" command for the keyboard inclined. Since we found most people found follow more useful than "jump-to" as a feature, we opted to remove it and instead follow if you select a participant in this list.

10. **[Linux] Automatically install browser integration** 🐧 (#202) - We came up with a workaround for scenarios where an admin (sudo) password was required in this installation process for most distributions. In cases where this does not work (e.g. CentOS 7), Live Share will now pop a terminal in VS Code and simply ask for you to enter your password to complete the process.

11. **[Linux] Automatically install Linux dependencies for supported distributions** 🐧 (#257) - If Live Share detects that a dependency is missing it will pop up a toast notification that asks you if you want to install them. Clicking "install" on this notification will open terminal in VS Code and run an install script. Note that if your distribution is not on our supported list, the script is available for contributions from the community [here](https://github.com/MicrosoftDocs/live-share/blob/master/scripts/linux-prereqs.sh). Though not officially supported, we've already had contributions to get ArchLinux working. You can also contribute to our knowledge base in the [Linux install details article](https://aka.ms/vsls-linux).

### Reported Issues Fixed 🚀

1. **RPC connection failed** (#294) - A race condition could cause this error to be thrown during a collaboration session.  This should be resolved.

2. **[VS Code] Can't use the debugger for Unity (even when not hosting a session)** (#255) - This should now be resolved.

3. **[Ubuntu 18.04] Ignorable error reported during launcher install on Ubuntu 18.04** (#258) - This was resolved with #202.

4. **[VS Code] vscode.languages.onDidChangeDiagnostics is not a function** (#283) - This was a bad error message when the version of VS Code was too old to be used with Live Share.

5. **[VS Code] You are currently not authorized to connect to the Visual Studio Live Share service. If this issue persists, please raise a bug.** (#285) - N/A anymore!!

6. While **full intellisense is not yet enabled**, the following languages no longer show incorrect warnings/errors:

    - Python (#63)
    - ASPX (#70)
    - F# (#64)

## v0.3.51 (VS Code / Visual Studio)

This release was an emergency update to resolve a problem where people that had signed into Visual Studio Code or Visual Studio 30+ days ago saw a message that they could no longer share. Apologies for the inconvenience! 😭 x 💯

### Reported Issues Fixed

1. **Intermittent sign in permission issues - Cannot share even though you are in the preview** (#280) - An update to the service side of Live Share inadvertently caused users 30+ days ago saw a message that they could no longer share. In VS Code this could be solved by simply signing out and back in again, but in Visual Studio additional steps were required.  This should no longer be the case.

## v0.2.547 (VS Code / Visual Studio)

This release fixes a number of user-reported issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 💯

### Reported Issues Fixed

1. **Saves do not propagate between participants** (#254) - We had a regression where saves where not always kept in sync across participants. That has now been fixed.

2. **Web browser does not appear when signing into VS Code** (#256) - We moved away from the "opn" node module that was causing this issue.

3. **VS Code "Unable to get user info errors"** (#269) - This is now resolved.

4. **Visual Studio on the host side can crash if a variable is edited during debugging by the guest**

5. **"Source not found" pops up on guest side in Visual Studio if hosts starts debugging a .NET Core project by VS Code**

6. **Linux: Bad error when gnome-keying or libsecret are missing** - Improves error messaging in this situation.

7. **Visual Studio icon fix for dark themes** - Icons now work better for dark themes.

8. **VS Code fix for "Cannot read property 'joinUri' of null errors"**

## v0.2.489 (VS Code / Visual Studio)

This release resolves two critical issues.

### Reported Issues Fixed

1. A large number of VS Code users on Mac were seeing a **Agent terminated with exit code: 2 and signal null** error on startup (#252).
2. Visual Studio and VS Code users were seeing an intermittent join error saying **Must call ProcessMessagesAsync first so responses can be received**.

Apologies for the inconvenience! 😭

## v0.2.487 (VS Code / Visual Studio)

This release is a mix of features, foundational changes, and bug-fixes which addresses a number of user-reported issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 💯

### Enhancements

1. **Synchronized scroll position in follow mode** (#115) - A fairly common request has been to keep the scroll position lined up while you are in follow mode.

2. **No more VS Code "double reload"** - When joining via the browser, VS Code originally had to first open a new window and then reload once the join process began. This has now been resolved when using recent versions of VS Code.

3. **Improved visibility to participants in VS** - This release has the first of a few user experience tweaks that are coming to follow mode and participant avatars in VS.

#### Experimental Features 🔬👩‍🔬

This release introduces a number of experimental features. To enable them:

- **VS Code:** Add "liveshare.features":"experimental" to settings.json.
- **VS:** Set Tools > Options > Live Share > Features to "Experimental"

Note that these features are still in progress and may have bugs or change before they are released. You can read about a number of these features in the [updated security article](https://aka.ms/vsls-security).

### Reported Issues Fixed 🚀

1. **VS Code Insiders activation issue** - An unexpected change in the insiders version of VS Code broke Live Share. This release resolves the problem.

2. **React Native Debugging in VS Code** (#164) - We've finally gotten through the issues associated with debugging react native apps.

3. **Proxy support** (#86) - We continue to chip away at proxy issues. This release adds some additional fixes and the start of relay support.

## v0.2.404 / v0.2.405 (VS Code)

v0.2.404 was a proactive release of Live Share for Visual Studio Code that adapted to an upcoming breaking API change that will be landing in Visual Studio Code Insiders soon.  No other changes were included.

Unfortunately, there was an underlying bug for Linux users that this update uncovered. Linux users should be prompted on each extension update to re-run the browser integration command. Sadly, this was not happening after the update (#225). v0.2.405 fixed this check and users will now be prompted on each install to run the command as originally intended.

## v0.2.399 / v0.2.400 (VS Code / Visual Studio)

This release introduces new platform support and fixes a number of user-reported issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 💯

### Enhancements

**VS Code Linux Support!** (#24) 🐧👏🎉 - As our most requested feature, this is the first release to introduce support for VS Code on Linux. There are some **pre-requisites** that need to be installed so check out the **[installation documentation](https://aka.ms/vsls-docs/vscode/install)** for details. There are still a few [shortcomings](https://aka.ms/vsls-issues/linux) we are working through.

### Reported Issues Fixed 🚀

1. **VS Code users not prompted to sign in when joining** (#167, #89) - A series of issues prevented the browser from appearing when a user has not signed in when joining via a browser link. This should now be resolved.

2. **Proxy support in direct mode** (#86) - We continue to chip away at proxy issues. This release includes support for using the HTTP_PROXY and HTTPS_PROXY environment variables for authenticated proxies (e.g. via https://username:password@proxy-ip-or-name:port) along with Windows integrated credentials while in **[direct mode only](https://aka.ms/vsls-docs/connection-mode)**. However, there are **still issues for traffic that needs to route through the cloud relay.** Specifically, proxy settings are not respected if "auto" mode falls back on the cloud relay or you are in "relay" mode.

3. **VS Code corrupted extension installs** (#180, #107, #112) - More work has gone into detecting and preventing corrupted installations. We are leaving these issues open until we have confirmed from telemetry and reports that the issues are gone.

4. **VS Code Insiders crash and debugging issues** (#182) - The upgrade to Electron 2.0 in VS Code Insiders 1.23 caused crashes in a number of extensions including Live Share. We have now made adjustments to prevent this from happening.

5. **Collaboration session prematurely expired** - Live Share was incorrectly cleaning up collaboration sessions that were still running after several days. The logic now checks for inactivity rather than just elapsed time.

## v0.2.307 (VS Code)

This release is a mix of features, foundational changes, and bug-fixes which addresses a number of user-reported *Visual Studio Code* issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 💯

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

1. **Incorrect error message when user is not signed up** (#160) - A bug in the a new firewall check in 0.2.258 on Windows broke the correct message that should appear for Visual Studio users attempting to share who are not in the preview. They instead say "Failed to create a collaboration session. Operation was cancelled..." This is now fixed.

2. **C# files show up as JavaScript when debugging** - When debugging, certain places in the Visual Studio debugger incorrectly reported C# files being debugged as JavaScript.

## v0.2.260 (VS Code)

This is another bug-fix release, which addresses a number of user-reported *Visual Studio Code* issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 💯

### GitHub Reported Issues Fixed (VS Code) 🚀

1. **Synchronizing conditional breakpoints** (#65) 🎉- We had previously enabled participants to synchronize breakpoints, and in this release, you can share conditional breakpoints as well (using either condition expressions and/or hit counts). Additionally, if you disable/enable breakpoints, that state will also be reflected in all participant's IDE.

1. **System proxy support** (#86) - VS Code now respects the standard proxy environment variables (e.g. `http_proxy`) when making network calls. We believe this will unblock a bunch of users behind proxies, however, we still need to add support for authenticated proxies, so we're leaving this issue open.

### Other Enhancements

1. **Share while debugging** 🎉 - You can now start a collaboration session *while* actively debugging, as opposed to needing to restart your debugger in order to share. Besides being a user experience improvement, this enables a key scenario for Live Share: the ability to share your current context with someone, while sitting at a breakpoint/exception that may be difficult to reproduce. Visual Studio already supported this, and so this release brings parity to VS Code.

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

1. **Proxy support** (#86) - Visual Studio now uses  default credentials when authenticating to proxies.  However, we are leaving the issue open while we track down a more consistent and permanent fix.

1. **Stability fixes** - The release also fixes a number of other issues including ensuring the locals pane is populated when Visual Studio is the host, improving the reliability of using direct connections in "auto" mode, improved connection error messages, and a number of telemetry reported issues.

## v0.2.206 (VS Code)

This is another bug-fix release, which addresses a number of user-reported *Visual Studio Code* issues. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 💯

### GitHub Reported Issues Fixed (VS Code) 🚀

1. **Launcher fails to start VS Code after clicking “Open” in Chrome on Windows 7** (#103)

1. **"Dependencies could not be installed" error** when installing the Visual Studio Live Share w/multiple windows open (#124)

1. **"Could not update extension binaries execution permissions" error** when running VS Code after installing the Live Share extension (#107)

1. **Live Share does not properly activate** when run on Mac with a case sensitive file system (#119)

1. **Proxy support** (#86) - We discovered this bug is partly due to a VS Code issue (Microsoft/vscode#12588) and setting the HTTP_PROXY and HTTPS_PROXY environment variables globally can resolve the issue for some Live Share users. We are, however, leaving the issue open while we track down a more consistent and permanent fix.

1. **Recent folder/file list shows temp locations** of ended collaboration sessions (#66)

## v0.2.151 (VS Code)

This is a patch release for a critical issue when installing the Live Share extension with the 32-bit version of VS Code. We really appreciate all of the usage/feedback, so please keep letting us know how to improve! 🤕🛠😃💯

### GitHub Reported Issues Fixed (VS Code)

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
- [Security features of Live Share](security.md)
- [Linux install details](linux.md)
- [Language and platform support](platform-support.md)
- [Extension support](extensions.md)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
