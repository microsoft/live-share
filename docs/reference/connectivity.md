---
title: "Connectivity  | Microsoft Docs"
description: "Information on connectivity and connection modes for Visual Studio Live Share."
ms.custom:
ms.date: 03/22/2018
ms.reviewer: ""
ms.suite: ""
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

This article summarizes the connectivity requirements for Visual Studio Live Share, available connectivity options, and known workarounds when applicable.

## Sign in

You can sign into Live Share using any [Azure Active Directory](https://azure.microsoft.com/services/active-directory) backed work or school account, a [Microsoft account](https://account.microsoft.com/account), or a [GitHub profile](https://github.com/). Typically sign-in URLs for these are open in most organizations given the number of public facing products that use them, but if not, contact your network administrator about opening up `login.microsoftonline.com` and/or `github.com` in addition to the domains [listed below](#requirements-for-connection-modes).

> [!NOTE]
> On-prem AD (ADFS) accounts and on-prem GitHub Enterprise accounts are not currently supported [(up-vote 👍)](https://github.com/MicrosoftDocs/live-share/issues/341).

## Connection modes

To ensure optimal performance, by default Visual Studio Live Share automatically detects whether a collaboration session host machine and guest machine can communicate directly over a network and only relays via the cloud if there is no route between them. This mixed "auto" mode is flexible and even allows some guests to relay through the cloud while others connect directly for the same session.

The direct connections are authenticated via a cloud based mechanism to ensure security but require a port between 5990 and 5999 be opened to enable the connectivity. As a result, when sharing for the first time your desktop firewall may prompt you open a port. Accepting this is optional as ignoring it will simply cause Live Share to always use the relay when in auto mode.

All connections in Visual Studio Live Share are SSH or SSL encrypted and authenticated against a central service to ensure that only those in the collaboration session can gain access to its content. In addition, Live Share's cloud relay does not persist any traffic routed through it and does not "snoop" the traffic in any way.

## Changing the connection mode

If you would prefer to disable direct or relayed connections or are simply troubleshooting connectivity problems, you can force other connection modes.

| Mode | Host Behavior | Guest Behavior |
|------|----------------|----------------------|
| Auto | The host's collaboration session accepts secured, authenticated direct connections or cloud relayed connections. | Attempts to use a direct connection and falls back to relaying through the cloud if this fails. |
| Direct | The host's collaboration session only accepts authenticated, secure direct connections. | Attempts to use a direct connection and stops if it cannot connect. |
| Relay | The host's collaboration session does not allow direct connections. No port is opened on the host's machine. | Always connects via the cloud. |

To change the mode:

**VS:**

1. Go to Tools > Options > Live Share.
2. Select the mode from the "Connection Mode" dropdown.
3. Restart VS.

**VS Code:**

1. Edit settings.json (File > Preferences > Settings).
2. Set `"liveshare.connectionMode"` to `"auto"`, `"direct"`, or `"relay"` depending on your preference.
3. Restart VS Code.

## Requirements for connection modes

The connection mode you are in will dictate the specific ports and URLs that need to be available for Live Share to function.

| Mode | Client Access Requirement | Troubleshooting |
|------|--------------|-----------------|
| Any | Outbound access to `*.liveshare.vsengsaas.visualstudio.com:443` | Ensure your corporate or personal network firewall allows you to connect to this domain. Enter https://insiders.liveshare.vsengsaas.visualstudio.com in a browser and verify you land at the Visual Studio Live Share home page. You may also be running into [proxy issues](#proxies) that need to be resolved.|
| Any (VS Code) | Outbound access to `download.microsoft.com:443` | Ensure your corporate or personal network firewall allows you to connect to this domain. You may also be running into [proxy issues](#proxies) that need to be resolved. |
| Auto | Auto-switches. See direct and relay modes. | Switch to direct or relay mode to troubleshoot. |
| Direct | Hosts: A port in the range 5990 - 5999 needs to be opened to accept inbound local network connections.<br /><br />Guests: A network route and outbound access to the host on this same port. | Verify "vsls-agent" is not blocked by your desktop firewall software for this port range and that you can ping one another. While Windows and other desktop software should prompt you the first time the agent starts up, we have seen instances where group policies prevent this from happening and you will need to [manually add the entry](#manually-adding-a-firewall-entry). You may also be running into [proxy issues](#proxies) that need to be resolved. |
| Relay | Outbound access to `*.servicebus.windows.net:443`. | Ensure your corporate or personal network firewall allows you to connect to this domain. You may also be running into [proxy issues](#proxies) that need to be resolved.|
| Any | Outbound access to `*.online.visualstudio.com`. | Ensure your corporate or personal network firewall allows you to connect to this domain. Enter https://sts.online.visualstudio.com/api/swagger/index.html in a browser and verify you land at the swagger page. You may also be running into [proxy issues](#proxies) that need to be resolved.|

## Manually adding a firewall entry

As outlined above, direct mode requires that your personal firewall allow **vsls-agent** to accept connections in the port range 5990-5999. If you want to use direct mode but have found that your firewall does not have vsls-agent entry, you can add it manually. How you do this will vary by firewall software, but you can find information about **[configuring the Windows Firewall here](/windows/security/threat-protection/windows-firewall/create-an-inbound-program-or-service-rule)**.

If you do not see an entry for vsls-agent, you can find the agent executable in one of the following locations.

### VS Code agent location

Substitute **VERSION** for the extension version number in one of the paths below:

- **macOS, Linux**

    `$HOME/.vscode/extensions/ms-vsliveshare.vsliveshare-VERSION/dotnet_modules/vsls-agent`

- **Windows**

    `%USERPROFILE%\.vscode\extensions\ms-vsliveshare.vsliveshare-VERSION\dotnet_modules\vsls-agent.exe`

### Visual Studio agent location

The Visual Studio location is more dynamic, but you can follow these steps to find the executable:

1. Navigate to your Visual Studio install location. This is typically `C:\Program Files (x86)\Microsoft Visual Studio\EDITION` where **EDITION** is Community, Enterprise, etc

2. Run a search for `vsls-agent.exe` in under the **IDE\Extensions** sub-folder.

Unfortunately you may need to do this step **each time you update Visual Studio Live Share.**

## Proxies

Visual Studio Live Share currently has some limitations around proxy use. While automatic proxy settings should work on Windows, when using macOS or Linux (and with certain proxy configurations on Windows) the **HTTP_PROXY** and **HTTPS_PROXY** environment variables will need to be set *globally*.

If your proxy doesn't automatically set these for you, you can manually set the variables in the following form:

`HTTPS_PROXY=http://proxy-ip-address:proxyport`

If you have an authenticating proxy, you can add your user and password as follows:

`HTTPS_PROXY=http://user:password@proxy-ip-address:proxyport`

If these settings don't solve the problem for you, [please let us know](https://github.com/MicrosoftDocs/live-share/issues/86) the specifics of your proxy setup so we can take a look at improving support.

## See also

- [How-to: Collaborate using Visual Studio Code](../use/vscode.md)
- [How-to: Collaborate using Visual Studio](../use/vs.md)
- [Security features of Live Share](security.md)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
