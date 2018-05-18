---
title: "Platform and language support - Visual Studio Live Share | Microsoft Docs"
description: "An overview of platform and language support for Visual Studio Live share."
ms.custom:
ms.date: 04/25/2018
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

# Language and platform support

Visual Studio Live Share's features are intended to work across a diverse landscape of languages and application platforms. However, given the sheer number of variations, some platforms and languages are more complete than others. This document covers the current known state of a number of popular languages and platforms for currently supported features.

See a language or platform you need? Want to add one you don't see? [Vote here.](https://github.com/MicrosoftDocs/live-share/issues/12)

## Visual Studio Code

All languages / platforms have same file intellisense (when the respective extension is installed), as well as colorization and co-editing support. The lists below covers advanced features currently without complete, universal support:

### Languages

| Language | Project-wide language services | Shared Debugging |
|----------|--------------------------------|--------------|
| Ansible | ✅ | *N/A* |
| Ballerina | ✅ | ✅ |
| Bash | ✅ | ✅ |
| C++ | ✅ | ✅ |
| C# | ✅ | ✅ | 
| Clojure | ✅ | *N/A* <sup>4</sup> |
| CSHTML | *N/A* <sup>1</sup> | ✅ |
| CSS | *N/A* | *N/A* |
| Dart | ✅ | ✅ |
| Elixir | ✅ | ✅ |
| Elm | ✅ |  *N/A* <sup>4</sup> |
| Erlang | ✅ | ✅ |
| F# | ✅ |  *N/A* <sup>4</sup> |
| Fortran | ✅ | *N/A* |
| Go | ✅ | ✅ |
| Gradle | ✅ | *N/A* <sup>4</sup> |
| GraphQL | ✅ | *N/A* <sup>4</sup> |
| Haskell | ✅ | ✅ |
| HTML | *N/A* | <sup>2</sup> |
| Markdown | *N/A* | *N/A* |
| Java | ✅ | ✅ |
| JavaScript / TypeScript | ✅ | ✅ <sup>3</sup> |
| Julia | ✅ | *N/A* <sup>4</sup> |
| Kotlin | *N/A* | *N/A* <sup>4</sup> |
| Lua | ✅ | ✅ |
| MATLAB |  ✅ | *N/A* <sup>4</sup> |
| Objective-C | ✅ | *N/A* <sup>4</sup> |
| Pascal | ✅ | *N/A* <sup>4</sup> |
| Perl | ✅ | ✅ |
| PHP | ✅ | ✅ |
| PowerShell | *N/A* | ✅ |
| Python |  ✅ | ✅ |
| PureScript | ✅ | *N/A* <sup>4</sup> |
| R |  ✅ | *N/A* <sup>4</sup> |
| Reason/OCaml | ✅ | *N/A* <sup>4</sup> |
| Ruby | ✅ | ✅ | |
| Rust | ✅ | *N/A* <sup>4</sup> |
| Scala | ✅ | *N/A* <sup>4</sup> |
| Solidity | ✅ | *N/A* <sup>4</sup> |
| SQL / T-SQL | *N/A* | *N/A* <sup>4</sup> |
| Swift | ✅ | *N/A* <sup>4</sup> |
| Terraform | ✅ | *N/A* <sup>4</sup> |
| XML | ✅ | *N/A* <sup>4</sup> |
| YAML | ✅ | *N/A* <sup>4</sup> |

<sup>1</sup> No CSHTML support in C# extension.<br />
<sup>2</sup> Embedded JavaScript in HTML is supported when doing client debugging.<br />
<sup>3</sup> JavaScript / TypeScript debugging for Node or browser.<br />
<sup>4</sup> The respective extension for VS Code doesn't currently support debugging. As soon as it does, we will investigate adding co-debugging support to it. <br />
<sup>?</sup> Not yet validated.

### Platforms

| App/platform type | Shared Debugging | App Sharing |
|-------------------|--------------|-------------|
| Arduino | ✅ | *N/A* |
| Azure App Service | ✅ | *N/A* |
| Azure Dev Spaces | ✅ | ✅ <sup>1</sup> |
| Azure Functions (local and remote) | ✅ | ✅ <sup>1</sup> |
| Blockchain (Ethereum) | ✅ | ✅ <sup>1</sup> |
| Console / CLI | ✅ | ✅ <sup>4</sup> |
| Databases | <sup>5</sup> | ✅ <sup>1</sup> |
| Desktop (Electron/native) | ✅ | <sup>9</sup> |
| Dynamics NAV 2018 | ✅ | ✅ <sup>1</sup> |
| Games (Unity) | ✅ | <sup>9</sup> |
| Games (Unreal) | ✅ | <sup>9</sup> |
| Markdown | *N/A* | ✅ <sup>6</sup> |
| Mobile (Cordova) | ✅ | ✅ <sup>1,7</sup> |
| Mobile (Native) | ✅ | <sup>9</sup> |
| Mobile (React Native) | ✅ | ✅ <sup>1,8</sup> |
| Web app / API (Back-end) | ✅ | ✅ <sup>1</sup> |
| Web app (Front-end) | ✅ <sup>2</sup> | ✅ <sup>3</sup> |
| VS Code extensions | | |

<sup>1</sup> Via [share local server](../use/vscode.md#share-a-server).<br />
<sup>2</sup> Debugging occurs against the host's browser rather than guest.<br />
<sup>3</sup> By sharing back-end.<br />
<sup>4</sup> Supported via shared terminals.<br />
<sup>5</sup> Debugging database stored procs is not currently supported <br />
<sup>6</sup> Via "preview". However, images do not appear due to known issue. [Vote (👍) here.](https://github.com/MicrosoftDocs/live-share/issues/61)<br />
<sup>7</sup> Cordova apps can be shared via the the "browser" platform<br />
<sup>8</sup> React Native apps can be shared via Expo and [shared servers](../use/vscode.md#share-a-server).<br />
<sup>9</sup> Live Share doesn't currently support sharing windows/screens. [Vote (👍) here.](https://github.com/MicrosoftDocs/live-share/issues/236)

## Visual Studio

While most languages have some single file Intellisense support, there are some caveats outlined below. All languages/platforms support co-editing. The remainder of the list covers advanced features features currently without complete, universal support:

### Languages

| Language | Single-file language services | Project-wide language services | Co-Debugging |
|----------|-------------------------------|--------------------------------|--------------|
| C# | ✅ | ✅ | ✅ |
| CSHTML | ✅  <sup>1</sup> | | ✅ |
| ASPX | ✅ <sup>1</sup> |  | ✅ |
| HTML | ✅ | *N/A* | <sup>2</sup> |
| CSS | ✅ | *N/A* | *N/A* |
| JavaScript / TypeScript | ✅ | ✅ | ✅ <sup>3</sup> |
| C++ | ✅ | ✅ | ✅ |
| Python | ✅ | | ✅ |
| Markdown | ✅ | *N/A* | *N/A* |
| PowerShell | ✅ | *N/A* | ✅ |
| VB.NET | ✅ | | ✅ |
| VBHTML | ✅ <sup>1</sup> | | ✅ |
| XAML | ✅ | *N/A* | <sup>4</sup> |
| SQL / T-SQL | ✅ | *N/A* | |
| F# | ✅ | | ✅ |
| R | ❌ <sup>5</sup> | *N/A* | ✅ |

<sup>1</sup> Gap: CSHTML, VBHTML, and ASPX have a known issues around embedded C#/VB support given code-behind C#/VB files are not resolved due to full intellisense not being implemented. [Vote (👍) here on CSHTML/VBHTML.](https://github.com/MicrosoftDocs/live-share/issues/59) [Vote (👍) here on ASPX.](https://github.com/MicrosoftDocs/live-share/issues/70)<br />
<sup>2</sup> Embedded JavaScript in HTML is supported when doing client debugging.<br />
<sup>3</sup> JavaScript / TypeScript debugging for Node or browser.<br />
<sup>4</sup> Though debugging XAML itself is technically N/A, debugging code-behind is supported.<br />
<sup>5</sup> Gap: R language service errors on the guest side on join and after every newline. Not supported. [Vote (👍) here.](https://github.com/MicrosoftDocs/live-share/issues/72)<br />

### Platforms

| App/platform type | Co-debugging | App sharing |
|-------------------|--------------|-------------|
| Web app / API (Back-End) | ✅ | ✅ <sup>1</sup> |
| Web app (Front-end) | ✅ <sup>2</sup> | ✅ <sup>3</sup> |
| Azure Functions | ✅  | ✅ <sup>5</sup> |
| Azure Service Fabric | ✅ | ✅ <sup>5</sup> |
| [Visual Studio Connected Environment for AKS](https://landinghub.visualstudio.com/vsce) | ✅ | ✅ <sup>1</sup> |
| Databases | <sup>4</sup> | ✅ <sup>5</sup> |
| Console / CLI | ✅ | ✅ <sup>6</sup> |
| Desktop (WinForms) | ✅ | |
| Desktop (WPF) | ✅ | |
| Universal Windows Platform | ✅ |  |
| VS Extensions | ✅ |  |

<sup>1</sup> Via [share local server](../use/vs.md#share-a-server). ASP.NET Web Apps can also use [automatic web app sharing](../use/vs.md#automatic-web-app-sharing).<br />
<sup>2</sup> Debugging occurs against the host's browser rather than guest.<br />
<sup>3</sup> By sharing back-end.<br />
<sup>4</sup> Debugging database stored procs is not currently supported <br />
<sup>5</sup> Via [share local server](../use/vs.md#share-a-server). <br />
<sup>6</sup> Partially supported via shared terminals.<br />
<sup>?</sup> Not yet validated.

## See also

- [Extension support](extensions.md)
- [Connectivity requirements for Live Share](connectivity.md)
- [Security features of Live Share](security.md)
- [All major bugs, feature requests, and limitations](https://aka.ms/vsls-issues)
- [All feature requests and limitations](https://aka.ms/vsls-feature-requests)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
