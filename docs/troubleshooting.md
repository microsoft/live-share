---
title: "Troubleshooting - Visual Studio Live Share | Microsoft Docs"
description: "Troubleshooting tips and tricks for Visual Studio Live Share."
ms.custom:
ms.date: 03/22/2018
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "liveshare"
ms.topic: "troubleshooting"
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

# Troubleshooting Visual Studio Live Share

This article covers troubleshooting tips, workarounds, and answers for common problems and questions. You may also want to take a look at the [FAQ](https://aka.ms/vsls-faq).

## Installation / tool requirements

The following are troubleshooting tips related to installing VS Live Share.

| Tool | Problem | Resolution / Workaround |
|------|---------|------------|
| VS | The extension installer <strong>cannot find a version of Visual Studio</strong> to use when trying to install the Visual Studio Live Share extension. | Visual Studio Live Share requires **VS 2017 version 15.6** or higher for both hosts and guests. Install the latest [update of VS 2017](https://visualstudio.com/vs/) and retry. <br /><br />_Note: VS Preview is **no longer required** as 15.6 is GA._|
| VS Code | An error appears when trying to use Visual Studio Live Share with VS Code on macOS <strong>El Capitan or below</strong>. | VS Live Share's OS support is dependant on .NET Core which currently [only supports macOS Sierra and up.]((https://github.com/dotnet/core/blob/master/release-notes/2.0/2.0-supported-os.md).) |
| VS Code | Uninstalling the Live Share extension <strong>never completes</strong>. | Restart VS Code and try again. |
| VS Code | A "**Dependencies could not be installed**" error appears the while extension is **finishing installation** on first start or you get errors about **missing or already present files**. | Verify you are on a **good network connection**. If you are, you could be running into a **proxy or firewall** issue. See [connectivity troubleshooting](#connectivity). <br /><br />|
| VS Code | Installing the VS Live Share extension from the marketplace <strong>installs it in the stable/insiders version of VS Code</strong> instead of the version I want. | Start VS Code stable or insiders depending on your preference, click on the "extensions" tab, search for "VS Live Share" and install from there. |
| VS Code (**Linux**) | The Live Share extension does not activate and **no status bar items appear** after installing the extension on **Linux**. | Visual Studio Live Share depends on .NET Core 2.0 which has a number of Linux prerequisites that may not be met on certain distributions of Linux by default. See [here for details](use/vscode.md#installation) on what should be installed. |

## Sign in

The following are troubleshooting tips for sign in problems.

| Tool | Problem | Resolution / Workaround |
|------|---------|------------|
| All | You would like to <strong>join</strong> a collaboration session</strong> but <strong>have not / do not want to sign up</strong> for the preview or email updates. | Anyone can join a collaboration session as a guest without "signing up" for preview.<br /><br />Further, "signing in" to the Live Share extension in VS/VS Code does <strong>not</strong> opt you into receiving email updates.<br /><br />Live Share requires guests to sign in as a security measure so the host has visibility to the identity of those that have joined. [Up vote this feature](https://github.com/MicrosoftDocs/live-share/issues/3) if you'd like the option to allow anonymous users to join (e.g. users with no name / a user defined name). |
| VS Code | <strong>You are not prompted to sign in</strong> when joining via the <strong>browser</strong> (and you are not already signed in). |  This is a [known bug](https://github.com/MicrosoftDocs/live-share/issues/167). Click the sign in status bar item to sign in and then retry. |
| VS | You need to sign into VS Live Share with a <strong>different identity</strong> than you use to sign into Visual Studio. | Go to Tools > Options > Live Share > User account to select an alternate account. |
| VS Code | While a browser window pops up during sign in and the process <strong>appears to succeed on the web page</strong>, the status bar <strong>still says, "Sign in"</strong> after closing the browser. | After signing in, click "Having trouble?" and follow the directions to enter a temporary user code into the tool.<br /><br />We would also love to see what might be happening, so please [log a bug](https://aka.ms/vsls-problem). |
| All | You are getting a <strong>timeout or connection error</strong>. | See [connectivity troubleshooting](#connectivity). |
| All | You signed up and were accepted into the preview using an <strong>email address not tied to a Microsoft work, school, or personal account or GitHub account</strong>. | A simple resolution is to add this email address as a secondary email to your GitHub account and sign in that way. VS Live Share simply validates that an accepted email is in your profile when you sign in with GitHub. (Note: Use Tools > Options > Live Share > User account to sign in via GitHub from Visual Studio.) <br /><br /> If that won't work, send a mail to [vsls-feedback@microsoft.com](mailto:vsls-feedback@microsoft.com) and we will switch out your email address.<br /><br />If you have not signed up, you can do so [here](https://aka.ms/vsls-signup) and we will let you know when you've been accepted. |
| All | When signing in using a Microsoft backed **work or school email address** you see a message saying, **"Need admin approval"**. | Your Azure AD tenet is setup to require “admin consent” for new applications accessing the contents of the directory. Your AD admin would need to resolve this for you but it would only need to be done once for anyone using Live Share. See [here](https://stackoverflow.com/questions/39861830/azure-ad-admin-consent-from-the-azure-portal) and [here](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-scopes#admin-restricted-scopes).<br /><br /><ul><li>Application Name: Visual Studio Live Share (Insiders)</li><li>Application Type: Web App</li><li>Applications Status: Production</li><li>Delegated Permissions: User.Read</li><li>Application URL: https://insiders.liveshare.vsengsaas.visualstudio.com/</li><li>Reply URL: https://insiders.liveshare.vsengsaas.visualstudio.com/auth/redirect/windowslive/</li></ul><br /> If this is not possible, contact vsls-feedback@microsoft.com and ask to switch to a personal Microsoft account or a GitHub account instead. |
| VS Code (**macOS**) | When signing in you see an error stating **SecKeychainAddGenericPassword() failed**. | This is almost always due to a common problem with macOS where password changes are not reflected in the login keychain. Try going into "Keychain Access", locking the login keychain and then unlocking it again. This may be enough to resolve the problem, but if you are unable to unlock it with your current password, try your previous one. If that works, change the login keychain password to your current password. See [here](https://support.apple.com/en-us/HT201609) for details. |
| VS Code (**Linux**) | You are <strong>prompted to enter a user code</strong> but no browser appears to allow you to get one. | We are working to eliminate the user code requirement on Linux. In the mean time, a browser window should appear for you to use to sign in. If not, the browser window may be hidden under VS Code. See the next tip if this is not the case.  |
| VS Code | After clicking "Sign in" (or using the "Live Share: Sign in" command), <strong>no browser window appears to allow you to enter your credentials</strong>. | 1. Sign in at https://insiders.liveshare.vsengsaas.visualstudio.com/auth/login<br />2. After signing in, click "Having trouble?"<br /> 3. Follow the directions to enter a temporary user code into the tool.<br /><br />Please also run the "Live Share: Export Logs" command and include the zip and a comment on [this bug](https://github.com/MicrosoftDocs/live-share/issues/89). |

## Share and Join

The following are troubleshooting tips for sign in problems.

| Tool | Problem | Resolution / Workaround |
|------|----------------|------------|
| All | <strong>Share:</strong> You have [signed up](https://aka.ms/vsls-signup) for the private preview but are getting an <strong>error about not being accepted</strong> when you try to share. | You need to be accepted into the preview to share as a "host" but not to join as a "guest". Preview acceptances will occur in waves over the preview period and you will be notified by email once accepted. <br /><br /> In addition, be sure you've signed in to Visual Studio or Visual Studio Code using credentials associated with the email address you used to sign up. See [sign in troubleshooting](#sign-in) for more information.  |
| All | <strong>Share/Join:</strong> You are getting a timeout or error about not being able to connect. | See [connectivity troubleshooting](#connectivity). |
| VS Code | <strong>Join:</strong> You were <strong>not prompted / able to launch VS Code</strong> after opening the join page in a browser. |  Tips: <ul><li>Be sure you've <i>started the VS Code at least once and waited for the install to complete in the status bar.</i></li><li>If that doesn't work, try running the "Live Share: Launcher Setup" command.</li><li>**Linux users**: Be sure you've run the terminal command required to install Live Share's browser integration. See [here](use/vscode.md#linux-browser-integration) for details.</li><li>Finally, see [joining manually](reference/manual-join.md) as a workaround.</lu></ul> If you hit this problem, we would love to see what might be happening, so please [log a bug](https://aka.ms/vsls-new-issue). |
| VS | <strong>Join:</strong> You were <strong>not prompted / able to launch VS </strong> after opening the join page in a browser. |  See [join manually](reference/manual-join.md).<br /><br /> We would also love to see your logs, so please please [log a bug](https://aka.ms/vsls-problem) using Visual Studio's "Report a Problem..." feature. |
| All | <strong>Join:</strong> You would prefer to <strong>paste the join link directly into VS / VS Code</strong> rather than clicking on the web link. | See [join manually](reference/manual-join.md). |
| All | <strong>Join:</strong> You see a message saying, "**the owner of the workspace seems to be offline**," when joining via the browser. | Possible workarounds:<br /><ul><li>Try [joining manually](reference/manual-join.md). We have seen issues with cross-region (e.g. east and west US) joins due to service issues that do not affect manual joins.</li><li>Live Share may be unable to route directly to the host when running in "auto" connection mode. Try [relay mode](reference/connectivity.md).</li></ul>See [connectivity troubleshooting](#connectivity) for more possibilities |
| VS Code | <strong>Join:</strong> You joined via the browser <strong>before signing in</strong>, were not prompted to sign in</strong>, and the join never completed. |  This is a [known bug](https://github.com/MicrosoftDocs/live-share/issues/167). Click the sign in status bar item to sign in and then join again. |

## Connectivity

The information below can help you troubleshoot if you're having problems related to connectivity or timeouts when signing in, sharing, or joining.

As outlined in the [connectivity requirements for Live Share](reference/connectivity.md) article, different connection modes have different requirements to function so there are a few different potential issues going on.

| Tool | Problem | Probable Cause |
|------|------|----------------|
| All | You are using a <strong>proxy</strong> and are seeing a number of connectivity problems | Proxy settings can be tricky particularly [in the case of VS Code](https://github.com/Microsoft/vscode/issues/12588). First, be sure you have **HTTP_PROXY** and **HTTPS_PROXY** environment variables set **globally** so they are picked up by new processes and retry.<br /><br />If this does not resolve the problem, we are investigating and working on fixes for number of issues when connecting via a proxy. Please let us know what you are seeing in [this issue](https://github.com/MicrosoftDocs/live-share/issues/86) and be sure to mention if you are in VS or VS Code along with the OS you are running. |
| VS Code | After installing the extension and starting up VS Code for the first time you get an <strong>an error when "Finishing Installation" appears in the status bar</strong>. |  You cannot access the internet or access to download.visualstudio.microsoft.com and/or download.microsoft.com on port 443 is blocked by your personal or corporate firewall. See [here](https://github.com/MicrosoftDocs/live-share/issues/58) for information on why Live Share needs to download something at this point. |
| All | You are <strong>unable to sign into VS Live Share</strong> | You cannot access the internet or access to *.liveshare.vsengsaas.visualstudio.com on port 80/443 is blocked by your personal or corporate firewall. Enter https://insiders.liveshare.vsengsaas.visualstudio.com in a browser and verify you land at the VS Live Share home page. |
| All | You are in <strong>auto mode</strong> (the default), are able to sign in, but see a <strong>timeout or connection error</strong> when either sharing or joining. | Either both direct and relay modes are failing to connect or there is a bug with auto mode. If you are able to connect after [switching to direct or relay mode](reference/connectivity.md#changing-the-connection-mode), please [raise a bug](https://aka.ms/vsls-problem). |
| All | You are in <strong>direct mode</strong>, are able to sign in, but see a <strong>timeout or connection error</strong> when either sharing or joining. | The guest and host cannot directly connect. Try [auto or relay mode](reference/connectivity.md#changing-the-connection-mode) to see if the problem goes away. You may need to [manually allow Live Share through your personal firewall](reference/connectivity.md#manually-adding-a-firewall-entry) or simply use relay mode. |
| All | You are in <strong>relay mode</strong>, are able to sign in, but are notified of a <strong>timeout or connection error</strong> when either sharing or joining. | Access to *.servicebus.windows.net on port 80/443 is blocked is blocked by your personal or corporate firewall. Try [direct mode](reference/connectivity.md#changing-the-connection-mode). |

See the [connectivity requirements for Live Share](reference/connectivity.md) article, for more information on connectivity requirements.

## See also

Quickstarts

- [Share your first project](quickstart/share.md)
- [Join your first session](quickstart/join.md)

How-tos

- [Collaborate using Visual Studio Code](use/vscode.md)
- [Collaborate using Visual Studio](use/vs.md)

Reference

- [All major bugs, feature requests, and limitations](https://aka.ms/vsls-issues)
- [All feature requests and limitations](https://aka.ms/vsls-feature-requests)
- [Connectivity requirements for Live Share](reference/connectivity.md)
- [Language and platform support](reference/platform-support.md)
- [Extension support](reference/extensions.md)

Still having problems? You can [provide feedback](support.md).
