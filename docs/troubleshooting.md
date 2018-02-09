<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Troubleshooting

## Tool Requirements

| Tool | Problem | Resolution / Workaround |
|------|---------|------------|
| Visual Studio 2017 | When trying to install the Visual Studio Live Share VSIX, the VSIX installer <strong>cannot find a version of Visual Studio</strong> to use.  | Visual Studio Live Share requires VS 2017 15.6 Preview 3+ for both hosts and guests. Download the latest [preview version of VS](http://visualstudio.com/vs/preview) and retry. |
| Visual Studio Code | Installing the extension from the marketplace <strong>installs it in the stable version of VS Code</strong> instead of Insiders. | Start VS Code Insiders, click on the "extensions" tab, search for "VS Live Share" and install from there. |
| Visual Studio Code | You get an error when trying to use Visual Studio Live Share with <strong>VS Code Linux</strong>. | VS Code Linux is not currently supported. [Upvote this feature](https://github.com/MicrosoftDocs/live-share/issues/24) if you'd like to see support added. |
| Visual Studio Code | Uninstalling the Live Share extension <strong>never completes</strong>. | Restart VS Code and try again. |

## Sign in

The following are troubleshooting tips for sign in problems.

| Tool | Problem | Resolution / Workaround |
|------|---------|------------|
| VS | You need to sign into VS Live Share with a <strong>different identity</strong> than you use to sign into Visual Studio. | Go to Tools > Options > Live Share > User account to select or sign into an alternate account. |
| VS Code | While a browser window appears and <strong>sign in appears to succeed</strong>, Visual Studio Code still says <strong>you are not signed in</strong>. | After signing in, click "Having trouble?" and follow the directions to enter a temporary user code into the tool. |
| VS Code | When clicking sign-in or joining from a link when not signed in, <strong>no browser window appears to allow you to sign in</strong>. | 1. Sign in at https://insiders.liveshare.vsengsaas.visualstudio.com/auth/login<br />2. After signing in, click "Having trouble?"<br /> 3. Follow the directions to enter a temporary user code into the tool.<br /><br />Please also run the "Live Share: Export Logs" command and include the zip and a comment on [this bug](https://github.com/MicrosoftDocs/live-share/issues/89). |
| All | You are getting a <strong>timeout or connection error</strong>. | See [connectivity troubleshooting](#connectivity). |
| All | You signed up and were accepted into the preview using an <strong>email address not tied to a Microsoft work, school, or personal account or GitHub account</strong>. | A simple resolution is to add this email address as a secondary email to your GitHub account and sign in that way. VS Live Share simply validates that an accepted email is in your profile when you sign in with GitHub. (Note: Use Tools > Options > Live Share > User account to sign in via GitHub from Visual Studio.) <br /><br /> If that won't work, send a mail to [vsls-feedback@microsoft.com](mailto:vsls-feedback@microsoft.com) and we will switch out your email address. |
.
## Sharing and Joining

The following are troubleshooting tips for sign in problems.

| Problem | Resolution / Workaround |
|----------------|------------|
| As a guest, you <strong>were not prompted / able to launch VS / VS Code</strong> after opening the join page in the browser. | See [joining manually](getting-started.md#manually-joining). |
| As a guest, you would prefer to <strong>paste the join link directly into VS / VS Code</strong> rather than clicking on the web link. | See [joining manually](getting-started.md#manually-joining). |
| You have [signed up](http://aka.ms/vsls-signup) for the private preview but are getting an <strong>error about not being accepted</strong> when you try to share. | You need to be accepted into the preview to share as a "host" but not to join as a "guest". Preview acceptances will occur in waves over the preview period and you will be notified by email once accepted. <br /><br /> In addition, be sure you've signed in to Visual Studio or Visual Studio Code using credentials associated with the email address you used to sign up. See [sign in trobuleshooting](#sign-in) for more information.  | 
| You are getting a timeout or error about not being able to connect. | See [connectivity troubleshooting](#connectivity). |

## Connectivity

The information below can help you troubleshoot if you're having problems related to connectivity or timeouts when signing in, sharing, or joining. 

As outlined in [getting started](getting-started.md#changing-the-connection-mode), different connection modes have different requirements to function so there are a few different potential issues going on.

| Problem | Probable Cause | 
|------|----------------|
| You are <strong>unable to sign into VS Live Share</strong> | You cannot access the internet or access to *.liveshare.vsengsaas.visualstudio.com on port 80/443 is blocked by your personal or corporate firewall. Enter http://insiders.liveshare.vsengsaas.visualstudio.com in a browser and verify you land at the VS Live Share home page. | 
| You are in <strong>auto mode</strong> (the default), are able to sign in, but see a <strong>timeout or connection error</strong> when either sharing or joining. | Either both direct and relay modes are failing to connect or there is a bug with auto mode. If you are able to connect after [switching to direct or relay mode](getting-started.md#changing-the-connection-mode), please [raise a bug](../CONTRIBUTING.md). |
| You are in <strong>direct mode</strong>, are able to sign in, but see a <strong>timeout or connection error</strong> when either sharing or joining. | The guest and host cannot directly connect. Try [auto or relay mode](getting-started.md#changing-the-connection-mode) to see if the problem goes away. You may need to [manually allow Live Share through your personal firewall](#manually-adding-a-firewall-entry-for-direct-mode) or simply use relay mode. |
| You are in <strong>relay mode</strong>, are able to sign in, but are notified of a <strong>timeout or connection error</strong> when either sharing or joining. | Access to *.servicebus.windows.net on port 80/443 is blocked is blocked by your personal or corporate firewall. Try [direct mode](getting-started.md#changing-the-connection-mode). |

Additional specifics on requirements and troubleshooting:

| Mode | Requirements | Troubleshooting |
|------|----------------|----------------------|
| All | Access to *.liveshare.vsengsaas.visualstudio.com on port 80/443 | Ensure your corporate or personal network firewall allows you to connect to this domain. Enter http://insiders.liveshare.vsengsaas.visualstudio.com in a browser and verify you land at the VS Live Share home page. |
| Auto | Auto-switches. See direct and relay modes. | Switch to direct or relay mode to troubleshoot. |
| Direct | A port in the range 5990 - 5999 needs to be open on the host's machine and guests need to be able to directly connect to each other. (See [this feature request](https://github.com/MicrosoftDocs/live-share/issues/60) for a proposed improvement.) | Verify "vsls-agent" is not blocked by your desktop firewall software for this port range and that you can ping one another. While Windows and other desktop software should prompt you the first time the agent starts up, we have seen instances where group policies prevent this from happening and you will need to [manually add the entry](#manually-adding-a-firewall-entry-for-direct-mode). |
| Relay | Access to *.servicebus.windows.net on port 80/443. | Ensure your corporate or personal network firewall allows you to connect to this domain. |


### Manually adding a firewall entry for direct mode

As outlined above, your personal firewall needs to allow **vsls-agent**to accept connections in the port range 5990-5999. If you want to use direct mode but have found that your firewall does not have vsls-agent entry, you can add it from one of the following locations:

VS Code (substitue **VERSION** for the extension version):

- **Windows:** %USERPROFILE%\\.vscode-insiders\extensions\ms-vsliveshare.vsliveshare-*VERSION*\dotnet_modules\win7-x86\vsls-agent.exe
- **macOS:** $HOME/.vscode-insiders/extensions/ms-vsliveshare.vsliveshare-*VERSION*/dotnet_modules/osx.10.10-x64/vsls-agent

Visual Studio:  
- Run a search for vsls-agent.exe in your VS install location under **IDE\Extensions**
- The VS install location is typically C:\Program Files (x86)\Microsoft Visual Studio\Preview\\*EDITION* where **EDITION** is Community, Enterprise, etc 

## More Info

- [Getting started and managing collaboration sessions](getting-started.md)
- [Visual Studio enabled features](collab-vs.md)
- [Visual Studio Code enabled features](collab-vscode.md)
- [Summary of language and platform support](platform-support.md)
- [FAQ](http://aka.ms/vsls-faq)
