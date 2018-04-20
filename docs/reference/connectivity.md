---
title: "Connectivity - Visual Studio Live Share | Microsoft Docs"
description: "Information on connectivity and connection modes for Visual Studio Live Share."
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

# Connectivity requirements for Live Share

To ensure optimal performance, by default Visual Studio Live Share automatically detects whether a collaboration session host machine and guest machine can communicate directly over a network and only relays via the cloud if there is no route between them. This mixed "auto" mode is flexible and even allows some guests to relay through the cloud while others connect directly for the same session.

The direct connections are authenticated via a cloud based mechanism to ensure security but require a port between 5990 and 5999 be opened to enable the connectivity. As a result, when sharing for the first time your desktop firewall may prompt you open a port. Accepting this is optional as ignoring it will simply cause Live Share to always use the relay when in auto mode.

All connections in Visual Studio Live Share are SSH or SSL encrypted and authenticated against a central service to ensure that only those in the collaboration session can gain access to its content. In addition, Live Share's internet relay does not persist any traffic routed through it and does not "snoop" the traffic in any way.

## Proxies

Visual Studio Live Share currently has some limitations around proxy use. **Proxy support is currently limited to direct mode due a known issue.** See [below](#changing-the-connection-mode) for how to switch to direct mode.

Next, while automatic proxy settings should work on Windows, when using macOS or Linux (and certain proxies with WindowS) the **HTTP_PROXY** and **HTTPS_PROXY** environment variables will need to be set *globally*.

If your proxy doesn't automatically set these for you, you can manually set the variables in the following form:

`HTTPS_PROXY=https://proxy-ip-address:proxyport`

If you have an authenticating proxy, you can add your user and password as follows:

`HTTPS_PROXY=https://user:password@proxy-ip-address:proxyport`

## Changing the connection mode

If you would prefer to disable direct or relayed connections or are simply troubleshooting connectivity problems, you can force other connection modes.

| Mode | Host Behavior | Guest Behavior |
|------|----------------|----------------------|
| Auto | The host's collaboration session accepts secured, authenticated direct connections or cloud relayed connections. | Attempts to use a direct connection and falls back to relaying through the cloud if this fails. |
| Direct | The host's collaboration session only accepts authenticated, secure direct connections. | Attempts to use a direct connection and stops if it cannot connect. |
| Relay | The host's collaboration session does not allow direct connections. No port is opened on the host's machine. | Always connects via the cloud. |

To change the mode:

- **VS:** Go to Tools > Options > Live Share, select the mode from the "Connection Mode" dropdown and then restart VS.
- **VS Code:** Edit settings.json (File > Preferences > Settings) and add one of the following and then restart VS Code:

    - ``"liveshare.connectionMode":"auto"``
    - ``"liveshare.connectionMode":"direct"``
    - ``"liveshare.connectionMode":"relay"``

## Requirements for connection modes

The specific ports and URLs that need to be available for Live Share to function will vary depending on the connection mode you are in.

| Mode | Client Access Requirement | Purpose | Troubleshooting |
|------|--------------|---------|-----------------|
| Any | Outbound access to *.liveshare.vsengsaas.visualstudio.com:443 | Authentication, authorization, collaboration session management (start/join/end), client discovery. | Ensure your corporate or personal network firewall allows you to connect to this domain. Enter https://insiders.liveshare.vsengsaas.visualstudio.com in a browser and verify you land at the VS Live Share home page. |
| Any (VS Code) | Outbound access to:<ul><li>download.microsoft.com:443</li><li>download.visualstudio.microsoft.com:443</li></ul> | Initial acquisition of dependant runtimes required for Live Share to function. | Ensure your corporate or personal network firewall allows you to connect to this domain. |
| Auto | Auto-switches. See direct and relay modes. | N/A | Switch to direct or relay mode to troubleshoot. |
| Direct | Hosts: A port in the range 5990 - 5999 needs to be opened to accept inbound local network connections.<br /><br />Guests: A network route and outbound access to the host on this same port. | Low latency and/or on-prem transmission and receipt of collaboration session content (files, edit/debug messages, etc). | Verify "vsls-agent" is not blocked by your desktop firewall software for this port range and that you can ping one another. While Windows and other desktop software should prompt you the first time the agent starts up, we have seen instances where group policies prevent this from happening and you will need to [manually add the entry](#manually-adding-a-firewall-entry). |
| Relay | Outbound access to *.servicebus.windows.net:443. | Transmission and receipt of collaboration session content (files, editing messages, debugging messages, etc) via a relay when two collaborators cannot connect directly. | Ensure your corporate or personal network firewall allows you to connect to this domain. |

## Manually adding a firewall entry

As outlined above, your personal firewall needs to allow **vsls-agent** to accept connections in the port range 5990-5999. If you want to use direct mode but have found that your firewall does not have vsls-agent entry, you can add it from one of the following locations:

VS Code (substitute **VERSION** for the extension version):

- **Windows:** %USERPROFILE%\\.vscode\extensions\ms-vsliveshare.vsliveshare-*VERSION*\dotnet_modules\win7-x86\vsls-agent.exe
- **macOS:** $HOME/.vscode/extensions/ms-vsliveshare.vsliveshare-*VERSION*/dotnet_modules/osx.10.10-x64/vsls-agent

Visual Studio:

- Run a search for vsls-agent.exe in your VS install location under **IDE\Extensions**
- The VS install location is typically C:\Program Files (x86)\Microsoft Visual Studio\\*EDITION* where **EDITION** is Community, Enterprise, etc

How you do this will vary based on your firewall software, but you can find information about [configuring the Windows Firewall here](https://docs.microsoft.com/en-us/windows/security/identity-protection/windows-firewall/create-an-inbound-program-or-service-rule).

## See also

- [How-to: Collaborate using Visual Studio Code](../use/vscode.md)
- [How-to: Collaborate using Visual Studio](../use/vs.md)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
