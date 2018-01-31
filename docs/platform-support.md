
<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Language and platform support

Visual Studio Live Share's features are intended to work across a diverse landscape of languages and application platforms. However, given the sheer number of variations, some platforms and languages are more complete than others. This document covers the current known state of a number of popular languages and platforms for currently supported features.

See a language or platform you need? Want to add one you don't? [Vote here.](https://github.com/MicrosoftDocs/live-share/issues/12)

## Visual Studio Code

All languages / platforms have same file intellisense (when the respective extension is installed), as well as colorization and co-editing support. The lists below covers advanced features currently without complete, universal support:

### Languages

| Language | Project-wide language services | Co-Debugging |
|----------|--------------------------------|--------------|
| Bash | *N/A* | ✅ | |
| C++ | | ✅ | |
| C# | ✅ | ✅ | |
| CSHTML | *N/A* <sup>1</sup> | ✅
| CSS | *N/A* | *N/A* |
| Erlang | | | | |
| Go | | ✅ | |
| Haskell | | ? |
| HTML | *N/A* | <sup>2</sup> |
| Java | | ✅ | |
| JavaScript / TypeScript | ✅ | ✅ <sup>3</sup> |
| Markdown | *N/A* | *N/A* |
| PHP | | ✅ |
| PowerShell | *N/A* | ✅ | | |
| Python | | ✅ <sup>4 *(Win only)*</sup> |
| Reason/OCaml | | *N/A* <sup>5</sup> |
| Ruby | | ✅ | |
| Rust | | *N/A* <sup>5</sup> |
| Swift | | *N/A* <sup>5</sup> |
| SQL / T-SQL | | |

<sup>1</sup> No CSHTML support in C# extension.<br />
<sup>2</sup> Embedded JavaScript in HTML is supported when doing client debugging.<br />
<sup>3</sup> JavaScript / TypeScript debugging for Node or browser.<br />
<sup>4</sup> There is an issue blocking Python debugger support on Mac. Debugging on Windows works. [Vote (👍) here.](https://github.com/MicrosoftDocs/live-share/issues/62)<br />
<sup>5</sup> The respective extension for VS Code doesn't currently support debugging. As soon as it does, we will investigate adding co-debugging support to it.

### Platforms

| App/platform type | Co-debugging | App sharing |
|-------------------|--------------|-------------|
| Web app / API (Back-end) | ✅ | ✅ <sup>1</sup> |
| Web app (Front-end) | ✅ <sup>2</sup> | ✅ <sup>3</sup> |
| Console / CLI | ✅ | <sup>4</sup> |
| Desktop (Electron/native) | ✅ | |
| Databases | <sup>5</sup> | ✅ <sup>1</sup> |
| Games (Unity) | ? | |
| Markdown | *N/A* | ✅ <sup>6</sup> |
| Mobile (Cordova) | ✅ | ✅ <sup>1,7</sup> |
| Mobile (Native) |  | |
| Mobile (React Native) |  | ✅ <sup>1,8</sup> |
| VS Code extensions | | |
| Azure Functions | ✅ | ✅ <sup>1</sup> |
| [Visual Studio Connected Environment for AKS](http://landinghub.visualstudio.com/vsce) | ✅ | ✅ <sup>1</sup> |

<sup>1</sup> Via [share local server](collab-vscode.md#sharing-a-local-server).<br />
<sup>2</sup> Debugging occurs against the host's browser rather than guest.<br />
<sup>3</sup> By sharing back-end.<br />
<sup>4</sup> Would be enabled via shared terminals. [Vote (👍) here.](https://github.com/MicrosoftDocs/live-share/issues/41)<br />
<sup>5</sup> Debugging database stored procs is not currently supported <br />
<sup>6</sup> Via "preview". However, images do not appear due to known issue. [Vote (👍) here.](https://github.com/MicrosoftDocs/live-share/issues/61)<br />
<sup>7</sup> Cordova apps can be shared via the the "browser" platform<br />
<sup>8</sup> React Native apps can be shared via Expo and [share local server](collab-vscode.md#sharing-a-local-server).<br />

## Visual Studio

All languages / platforms have same file intellisense (when the respective workload is installed), as well as colorization and co-editing support. The lists below covers advanced features currently without complete, universal support:

### Languages

| Language | Project-wide language services | Co-Debugging |
|----------|--------------------------------|--------------|
| ASPX | <sup>1</sup> | ✅ |
| C++ | | ✅ | |
| C# | ✅ | ✅ | |
| CSHTML | <sup>1</sup> | ✅ |
| CSS | *N/A* | *N/A* |
| F# | <sup>2</sup> | ✅ |
| HTML | *N/A* | <sup>3</sup> |
| JavaScript / TypeScript | ✅ | ✅ <sup>4</sup> |
| Markdown | *N/A* | *N/A* |
| PowerShell | *N/A* | ? | 
| Python | <sup>5</sup> | ✅ |
| R | | ? |
| SQL / T-SQL | | |
| VB.NET | | ✅ |
| XAML | | <sup>6</sup> | 

<sup>1</sup> CSHTML and ASPX have a known issues around embedded C# support given code-behind C# files are not resolved. [Vote (👍) here on CSHTML.](https://github.com/MicrosoftDocs/live-share/issues/59) [Vote (👍) here on ASPX.](https://github.com/MicrosoftDocs/live-share/issues/70)<br />
<sup>2</sup> Bug: Guests see errors for valid types, namespaces, and modules defined outside of the current file. [Vote (👍) here.](https://github.com/MicrosoftDocs/live-share/issues/64)<br />
<sup>3</sup> Embedded JavaScript in HTML is supported when doing client debugging.<br />
<sup>4</sup> JavaScript / TypeScript debugging for Node or browser.<br />
<sup>5</sup> Bug: Guests see warnings for valid types, namespaces, and modules defined outside of the current file. [Vote (👍) here.](https://github.com/MicrosoftDocs/live-share/issues/63)<br />
<sup>6</sup> Though debugging XAML itself is technically N/A, debugging C# code-behind is supported.


### App / platform type

| App/platform type | Co-debugging | App sharing |
|-------------------|--------------|-------------|
| Web app / API (Back-End) | ✅ | ✅ <sup>1,2</sup> |
| Web app (Front-end) | ✅ <sup>3</sup> | ✅ <sup>4</sup> |
| Console / CLI | ✅ | |
| Desktop (WinForms) | ✅ | |
| Desktop (WPF) | ✅ | |
| Databases | <sup>5</sup> | ✅ <sup>6</sup> |
| Games (Win32 C++) | ? |  |
| Games (Unity) | ? | |
| Mobile (Cordova) | ? | ? |
| Mobile (Native C++) | ? |  |
| Mobile (Xamarin) | ? |  |
| Office / Sharepoint | ? | |
| VS Extensions | ✅ |  |
| Azure Data Lake | ? | |
| Azure Functions | ? | |
| Azure Service Fabric | ? | |
| Azure Stream Analytics | ? | |
| [Visual Studio Connected Environment for AKS](http://landinghub.visualstudio.com/vsce) | ? | ✅ <sup>1</sup> |
| Universal Windows Platform | ✅ |  |
| Linux (C++) | ? | |

<sup>1</sup> Via [automatic web app sharing](collab-vs.md#automatic-web-app-sharing-during-debugging) or [share local server](collab-vs.md#sharing-a-local-server). <br />
<sup>2</sup> Python web apps do not support automatic web sharing but do support [share local server](collab-vs.md#sharing-a-local-server). <br />
<sup>3</sup> Debugging occurs against the host's browser rather than guest.<br />
<sup>4</sup> By sharing back-end.<br />
<sup>5</sup> Debugging database stored procs is not currently supported <br />
<sup>6</sup> Via [share local server](collab-vs.md#sharing-a-local-server). <br />

## More information

- [Getting started and managing collaboration sessions](getting-started.md)
- [Visual Studio enabled features](collab-vs.md)
- [Visual Studio Code enabled features](collab-vscode.md)
- [FAQ](http://aka.ms/vsls-faq)
