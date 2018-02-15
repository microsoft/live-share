<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Troubleshooting

This article covers troubleshooting tips, workarounds, and answers for common problems and questions. You may also want to take a look at the [FAQ](https://aka.ms/vsls-faq).

## Installation / tool requirements

The following are troubleshooting tips related to installing VS Live Share.

| Tool | Problem | Resolution / Workaround |
|------|---------|------------|
| Visual Studio 2017 | The extension installer <strong>cannot find a version of Visual Studio</strong> to use when trying to install the Visual Studio Live Share extension. | Visual Studio Live Share requires VS 2017 15.6 Preview 3+ for both hosts and guests. Download the latest [preview version of VS](https://visualstudio.com/vs/preview) and retry. |
| Visual Studio Code | Installing the VS Live Share extension from the marketplace <strong>installs it in the stable version of VS Code</strong> instead of Insiders. | Start VS Code Insiders, click on the "extensions" tab, search for "VS Live Share" and install from there. |
| Visual Studio Code | An error appears when trying to use Visual Studio Live Share with <strong>VS Code on Linux</strong>. | VS Code on Linux is not currently supported. [Up vote this feature](https://github.com/MicrosoftDocs/live-share/issues/24) if you'd like to see support added. |
| Visual Studio Code | An error appears when trying to use Visual Studio Live Share with VS Code on macOS <strong>El Capitan or below</strong>. | VS Live Share's OS support is dependant on .NET Core which currently [only supports macOS Sierra and up.]((https://github.com/dotnet/core/blob/master/release-notes/2.0/2.0-supported-os.md).) |
| Visual Studio Code | Uninstalling the Live Share extension <strong>never completes</strong>. | Restart VS Code and try again. |

## Sign in

The following are troubleshooting tips for sign in problems.

| Tool | Problem | Resolution / Workaround |
|------|---------|------------|
| All | You would like to <strong>join</strong> a collaboration session</strong> but <strong>do not want to sign up</strong> for the preview or email updates. | Anyone can join a collaboration session as a guest without "signing up" for preview.<br /><br />Further, "signing in" to the Live Share extension in VS/VS Code does <strong>not</strong> opt you into receiving email updates.<br /><br />Live Share requires guests to sign in as a security measure so the host has visibility to the identity of those that have joined. [Up vote this feature](https://github.com/MicrosoftDocs/live-share/issues/3) if you'd like the option to allow anonymous users to join (e.g. users with no name / a user defined name). |
| VS | You need to sign into VS Live Share with a <strong>different identity</strong> than you use to sign into Visual Studio. | Go to Tools > Options > Live Share > User account to select an alternate account. |
| VS Code | A browser window pops up during sign in and the process <strong>appears to succeed on the web page</strong>, the status bar <strong>still says, "Sign in"</strong> after closing the browser. | After signing in, click "Having trouble?" and follow the directions to enter a temporary user code into the tool.<br /><br />We would also love to see what might be happening, so please [log a bug](../CONTRIBUTING.md). |
| VS Code | When clicking sign-in or joining from a link when not signed in, <strong>no browser window appears to allow you to sign in</strong>. | 1. Sign in at https://insiders.liveshare.vsengsaas.visualstudio.com/auth/login<br />2. After signing in, click "Having trouble?"<br /> 3. Follow the directions to enter a temporary user code into the tool.<br /><br />Please also run the "Live Share: Export Logs" command and include the zip and a comment on [this bug](https://github.com/MicrosoftDocs/live-share/issues/89). |
| All | You are getting a <strong>timeout or connection error</strong>. | See [connectivity troubleshooting](#connectivity). |
| All | You signed up and were accepted into the preview using an <strong>email address not tied to a Microsoft work, school, or personal account or GitHub account</strong>. | A simple resolution is to add this email address as a secondary email to your GitHub account and sign in that way. VS Live Share simply validates that an accepted email is in your profile when you sign in with GitHub. (Note: Use Tools > Options > Live Share > User account to sign in via GitHub from Visual Studio.) <br /><br /> If that won't work, send a mail to [vsls-feedback@microsoft.com](mailto:vsls-feedback@microsoft.com) and we will switch out your email address.<br /><br />If you have not signed up, you can do so [here](https://aka.ms/vsls-signup) and we will let you know when you've been accepted. |

## Sharing and Joining

The following are troubleshooting tips for sign in problems.

| Tool | Problem | Resolution / Workaround |
|------|----------------|------------|
| VS | As a guest, you <strong>were not prompted / able to launch VS / VS Code</strong> after opening the join page in the browser. |  See [joining manually](getting-started.md#manually-joining).<br /><br /> We would also love to see your logs, so please please [log a bug](../CONTRIBUTING.md). |
| VS Code | As a guest, you <strong>were not prompted / able to launch VS / VS Code</strong> after opening the join page in the browser. |  Be sure you've <i>started the VS Code at least once</i> after installing Visual Studio Live Share before opening/re-opening the invite page.<br /><br />Otherwise, see [joining manually](getting-started.md#manually-joining). We would also love to see what might be happening, so please [log a bug](../CONTRIBUTING.md). |
| All | As a guest, you would prefer to <strong>paste the join link directly into VS / VS Code</strong> rather than clicking on the web link. | See [joining manually](getting-started.md#manually-joining). |
| All | You have [signed up](https://aka.ms/vsls-signup) for the private preview but are getting an <strong>error about not being accepted</strong> when you try to share. | You need to be accepted into the preview to share as a "host" but not to join as a "guest". Preview acceptances will occur in waves over the preview period and you will be notified by email once accepted. <br /><br /> In addition, be sure you've signed in to Visual Studio or Visual Studio Code using credentials associated with the email address you used to sign up. See [sign in troubleshooting](#sign-in) for more information.  | 
| All | You are getting a timeout or error about not being able to connect. | See [connectivity troubleshooting](#connectivity). |

## Connectivity

The information below can help you troubleshoot if you're having problems related to connectivity or timeouts when signing in, sharing, or joining. 

As outlined in [getting started](getting-started.md#changing-the-connection-mode), different connection modes have different requirements to function so there are a few different potential issues going on.

| Tool | Problem | Probable Cause | 
|------|------|----------------|
| All | You are using a <strong>proxy</strong> and are seeing a number of connectivity problems | We are investigating a number of possible issues when connecting via a proxy. Please let us know what you are seeing in [this issue](https://github.com/MicrosoftDocs/live-share/issues/86) and be sure to mention if you are in VS or VS Code along with the OS you are running. |
| VS Code | After installing the extension and starting up VS Code for the first time you get an <strong>an error when "Finishing Installation" appears in the status bar</strong>. |  You cannot access the internet or access to download.visualstudio.microsoft.com and/or download.microsoft.com on port 443 is blocked by your personal or corporate firewall. See [here](https://github.com/MicrosoftDocs/live-share/issues/58) for information on why Live Share needs to download something at this point. | 
| All | You are <strong>unable to sign into VS Live Share</strong> | You cannot access the internet or access to *.liveshare.vsengsaas.visualstudio.com on port 80/443 is blocked by your personal or corporate firewall. Enter https://insiders.liveshare.vsengsaas.visualstudio.com in a browser and verify you land at the VS Live Share home page. | 
| All | You are in <strong>auto mode</strong> (the default), are able to sign in, but see a <strong>timeout or connection error</strong> when either sharing or joining. | Either both direct and relay modes are failing to connect or there is a bug with auto mode. If you are able to connect after [switching to direct or relay mode](getting-started.md#changing-the-connection-mode), please [raise a bug](../CONTRIBUTING.md). |
| All | You are in <strong>direct mode</strong>, are able to sign in, but see a <strong>timeout or connection error</strong> when either sharing or joining. | The guest and host cannot directly connect. Try [auto or relay mode](getting-started.md#changing-the-connection-mode) to see if the problem goes away. You may need to [manually allow Live Share through your personal firewall](#manually-adding-a-firewall-entry-for-direct-mode) or simply use relay mode. |
| All | You are in <strong>relay mode</strong>, are able to sign in, but are notified of a <strong>timeout or connection error</strong> when either sharing or joining. | Access to *.servicebus.windows.net on port 80/443 is blocked is blocked by your personal or corporate firewall. Try [direct mode](getting-started.md#changing-the-connection-mode). |

Additional specifics on requirements and troubleshooting:

| Mode | Requirements | Troubleshooting |
|------|----------------|----------------------|
| All | Access to *.liveshare.vsengsaas.visualstudio.com on port 80/443 | Ensure your corporate or personal network firewall allows you to connect to this domain. Enter https://insiders.liveshare.vsengsaas.visualstudio.com in a browser and verify you land at the VS Live Share home page. |
| All (VS Code) | Access to download.visualstudio.microsoft.com and download.microsoft.com on port 443 | Ensure your corporate or personal network firewall allows you to connect to this domain. |
| Auto | Auto-switches. See direct and relay modes. | Switch to direct or relay mode to troubleshoot. |
| Direct | A port in the range 5990 - 5999 needs to be open on the host's machine and guests need to be able to directly connect to each other. (See [this feature request](https://github.com/MicrosoftDocs/live-share/issues/60) for a proposed improvement.) | Verify "vsls-agent" is not blocked by your desktop firewall software for this port range and that you can ping one another. While Windows and other desktop software should prompt you the first time the agent starts up, we have seen instances where group policies prevent this from happening and you will need to [manually add the entry](#manually-adding-a-firewall-entry-for-direct-mode). |
| Relay | Access to *.servicebus.windows.net on port 80/443. | Ensure your corporate or personal network firewall allows you to connect to this domain. |


### Manually adding a firewall entry for direct mode

As outlined above, your personal firewall needs to allow **vsls-agent**to accept connections in the port range 5990-5999. If you want to use direct mode but have found that your firewall does not have vsls-agent entry, you can add it from one of the following locations:

VS Code (substitute **VERSION** for the extension version):

- **Windows:** %USERPROFILE%\\.vscode\extensions\ms-vsliveshare.vsliveshare-*VERSION*\dotnet_modules\win7-x86\vsls-agent.exe
- **macOS:** $HOME/.vscode/extensions/ms-vsliveshare.vsliveshare-*VERSION*/dotnet_modules/osx.10.10-x64/vsls-agent

Visual Studio:  
- Run a search for vsls-agent.exe in your VS install location under **IDE\Extensions**
- The VS install location is typically C:\Program Files (x86)\Microsoft Visual Studio\Preview\\*EDITION* where **EDITION** is Community, Enterprise, etc 

## More Info

- [Getting started and managing collaboration sessions](getting-started.md)
- [Visual Studio enabled features](collab-vs.md)
- [Visual Studio Code enabled features](collab-vscode.md)
- [Summary of language and platform support](platform-support.md)
- [FAQ](https://aka.ms/vsls-faq)
