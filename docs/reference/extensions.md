---
title: "Extensions and ecosystem support -  Visual Studio Live Share | Microsoft Docs"
description: "An overview of extension support for Visual Studio Live share."
ms.custom:
ms.date: 04/25/2018
ms.reviewer: ""
ms.suite: ""
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

# Extensions and Ecosystem Support

One of the primary goals of Visual Studio Live Share is to enable developers to collaborate with each other, from the comfort of their favorite, and [**highly-customized**](https://marketplace.visualstudio.com/) tools. This way, ad-hoc interactions can occur frequently, while remaining visually familiar and ergonomic, regardless what you're helping with. To achieve this, it's critical that participants within a collaboration session are able to continue using any extensions which support their [personal preferences and workflows](#user-specific-extensions) (e.g. color/icons themes, key bindings, editor productivity enhancers).

Additionally, to make the act of joining a collaboration session as instant as possible, while remaining highly-productive, the goal of Visual Studio Live Share is to enable guests to automatically leverage the project-specific tooling their host has shared. This way, you can simply click a link, launch your tool of choice, and begin collaborating, without any extra setup. To achieve this, it is critical that extensions, which power the core [edit, build and debug workflow](#project-specific-extensions), are transparently "remoted" from the host to the guest, so that things like auto-completion, go-to-definition, and debugging "just work".

This document covers the current known state for the vast extension ecosystem, as well as a "scorecard" for the aforementioned goals. If you encounter an extension that doesn't meet this criteria, and is critical to your personal workflow, then please [let us know!](https://github.com/MicrosoftDocs/live-share/issues/new)

## User-Specific Extensions

Extensions that support user-specific customizations **must** work for the host, and **should** work for all guests. If an extension doesn't work properly for the host, that would be a regression, and is likely a bug in Visual Studio Live Share (please [file an issue](https://github.com/MicrosoftDocs/live-share/issues/new) if you see one!). If an extension doesn't behave as expected for a guest, it may require [changes in the extension itself](#known-issues), and we'll work with the ecosystem to address/improve these scenarios.

### Visual Studio Code

| Category | Example(s) | Guest-Supported? | Collaborative? |
|-|-|-|-|
| Color Themes | [One Dark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme), [Output Colorizer](https://marketplace.visualstudio.com/items?itemName=IBM.output-colorizer), [Rainbow String](https://marketplace.visualstudio.com/items?itemName=wk-j.vscode-rainbow-string), [Colored Regions](https://github.com/jmihelcic/colored-regions), [Indented Block Highlighting](https://marketplace.visualstudio.com/items?itemName=byi8220.indented-block-highlighting), [Todo Highlight](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight), [Bracket Pair Colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer) | ✅ | *N/A* |
| Icon Sets | [vscode-icons](https://marketplace.visualstudio.com/items?itemName=robertohuertasm.vscode-icons), [Visual Studio Classic Icons](https://marketplace.visualstudio.com/items?itemName=jez9999.vsclassic-icon-theme) | ✅ | *N/A* |
| Key bindings | [Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim), [IntelliJ IDEA Keybindings](https://marketplace.visualstudio.com/items?itemName=k--kato.intellij-idea-keybindings), [Emacs Friendly Keymap](https://marketplace.visualstudio.com/items?itemName=lfs.vscode-emacs-friendly) | ✅ | *N/A* |
| Snippets | [Angular v5 Snippets](https://marketplace.visualstudio.com/items?itemName=johnpapa.Angular2), [HTML Snippets](https://marketplace.visualstudio.com/items?itemName=abusaidm.html-snippets), [SVG Icons](https://marketplace.visualstudio.com/items?itemName=idleberg.svg-icons), [File Header](https://marketplace.visualstudio.com/items?itemName=mikey.vscode-fileheader) | ✅ | *N/A* <sup>1</sup> |
| Organization | [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync), [Project Manager](https://marketplace.visualstudio.com/items?itemName=alefragnani.project-manager), [Timeit](https://marketplace.visualstudio.com/items?itemName=smulyono.timeit), [Checkpoints](https://marketplace.visualstudio.com/items?itemName=micnil.vscode-checkpoints), [TODO Parser](https://marketplace.visualstudio.com/items?itemName=minhthai.vscode-todo-parser), [Favorites](https://marketplace.visualstudio.com/items?itemName=kdcro101.favorites) (❌), [Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks) (❌) | ✅ <sup>2</sup> | *N/A* <sup>3</sup> |
| Productivity | [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens), [Auto-Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag), [Code Outline](https://github.com/patrys/vscode-code-outline), [Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight), [Increment Selection](https://marketplace.visualstudio.com/items?itemName=albymor.increment-selection), [Bracketeer](https://marketplace.visualstudio.com/items?itemName=pustelto.bracketeer), [Image Preview](https://marketplace.visualstudio.com/items?itemName=kisstkondoros.vscode-gutter-preview), [JSON Helper](https://marketplace.visualstudio.com/items?itemName=zhoufeng.json-helper) (Hover), [Color Picker](https://marketplace.visualstudio.com/items?itemName=anseki.vscode-color), [Copy Word in Cursor](https://marketplace.visualstudio.com/items?itemName=alefragnani.copy-word), [CodeMetrics](https://marketplace.visualstudio.com/items?itemName=kisstkondoros.vscode-codemetrics) (CodeLens), [Git Co-Authors](https://github.com/rjimenezda/vscode-coauthor), [JavaScript Booster](https://marketplace.visualstudio.com/items?itemName=sburg.vscode-javascript-booster) (CodeActions), [Turbo Console Log](https://marketplace.visualstudio.com/items?itemName=ChakrounAnas.turbo-console-log), [Goto Next/Previous Member](https://marketplace.visualstudio.com/items?itemName=mishkinf.goto-next-previous-member), [Auto-scroll](https://github.com/PejmanNik/vscode-autoScroll?files=1), [NPM Import Version](https://marketplace.visualstudio.com/items?itemName=axetroy.vscode-npm-import-package-version) (❌), [Import Cost](https://github.com/wix/import-cost) (❌) | ✅ <sup>2</sup> | ❌ <sup>3</sup> |
| REPLs | [REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client), [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner), [Quokka.js](https://marketplace.visualstudio.com/items?itemName=WallabyJs.quokka-vscode), [R](https://marketplace.visualstudio.com/items?itemName=Ikuyadeu.r) | ✅ <sup>4</sup> | ❌ <sup>3</sup>  |
| Resource Managers | [mssql](https://marketplace.visualstudio.com/items?itemName=ms-mssql.mssql), [ftp-simple](https://marketplace.visualstudio.com/items?itemName=humy2833.ftp-simple), [Azure Functions](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-azurefunctions), [Docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker), [Brew Services](https://marketplace.visualstudio.com/items?itemName=beauallison.brew-services) | ✅ <sup>5</sup> | ❌ <sup>3</sup>  |

<sup>1</sup> *Unless a user was already familiar with a snippet, they wouldn't expect it to be available, and therefore, making them shared doesn't necessarily make sense.*

<sup>2</sup> *These extension categories are so diverse, that it's impossible to say they all work. However, in theory, they should, and we'll track the key ones that don't.*

<sup>3</sup> *These extension categories may benefit from collaborative experiences, and so we need end-user feedback to know that!*

<sup>4</sup> *These require the guest to have the runtime tools installed (e.g. Node.js), and work by running code locally.*

<sup>5</sup> *These work by connecting to a server of some kind, and can work with either centralized servers, servers that the guest has shared.*

## Project-Specific Extensions

Host-installed extensions, which support the core editing, building and debugging of an application, and are specific to a language/platform/library/SDK, should be automatically available to guests, without requiring them to install anything. This way, hosts can setup their environment to support productive development of a project, and allow their guests to instantly join them, without additional pre-requisites. Because project-specific extensions aren't subjective or personal in any way, they can be deterministically shared from host-to-guest, without impacting anyone's familiar environment.

Additionally, in order to support project-specific extensions that a guest has installed, but the host doesn't, they would ideally provide a degraded, yet functional experience (e.g. getting single file intellisense, being able to format a document).

| Category | Example(s) | Shared? | Guest-Supported? |
|-------|----------|--------|-----|
| Grammars / Syntax highlighting | [Fish Shell](https://marketplace.visualstudio.com/items?itemName=TeddyDD.fish), [Nginx](https://marketplace.visualstudio.com/items?itemName=shanoor.vscode-nginx), [Vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur), [DotEnv](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv), [ES6 String HTML](https://marketplace.visualstudio.com/items?itemName=hjb2012.vscode-es6-string-html), [Todo+](https://marketplace.visualstudio.com/items?itemName=fabiospampinato.vscode-todo-plus), [Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv) | ❌ | ✅ |
| Language Services | [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml), [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense), [ARM](https://marketplace.visualstudio.com/items?itemName=msazurermtools.azurerm-vscode-tools) | ✅ <sup>1</sup>| ✅ <sup>2</sup> |
| JSON Schemas | [Azure Functions](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-azurefunctions) | ✅ | ✅ |
| Linters | [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint), [Markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint), [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker), [PHPCS](https://marketplace.visualstudio.com/items?itemName=ikappas.phpcs) | ✅ | ✅ <sup>2</sup>  |
| Formatters | [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode), [Beautify](https://marketplace.visualstudio.com/items?itemName=HookyQR.beautify) | ✅ | ✅ <sup>2</sup> |
| Debuggers | [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python), [Debugger for Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome) | ✅ <sup>3</sup> | ❌ <sup>4</sup> |
| Test Runners | [Java Test Runner](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-test), [Mocha Sidebar](https://marketplace.visualstudio.com/items?itemName=maty.vscode-mocha-sidebar), [Postman Runner](https://marketplace.visualstudio.com/items?itemName=eridem.vscode-postman), [Jest Runner](https://marketplace.visualstudio.com/items?itemName=firsttris.vscode-jest-runner), [Neptune](https://marketplace.visualstudio.com/items?itemName=LambdaFactory.neptune) | ❌ <sup>5</sup> | ✅ <sup>2</sup> |
| Custom File Previewers | [SVG Preview](https://marketplace.visualstudio.com/items?itemName=cssho.vscode-svgviewer), [GraphViz](https://marketplace.visualstudio.com/items?itemName=joaompinto.vscode-graphviz), [Markdown Image Size](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-image-size) | ❌ |  ✅ |
| File/Project Generators | [Azure Functions](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-azurefunctions), [C/C++ Project Generator](https://marketplace.visualstudio.com/items?itemName=danielpinto8zz6.c-cpp-project-generator) | ❌ | ❌<sup>6</sup> |
| Source control providers | [SVN](https://marketplace.visualstudio.com/items?itemName=johnstoncode.svn-scm), [Hg](https://marketplace.visualstudio.com/items?itemName=mrcrowl.hg) | ❌ | ❌ |

<sup>1</sup> *Currently only C# and JavaScript/TypeScript.*

<sup>2</sup> *Would only support the current active document, since guests don't have local file access.*

<sup>3</sup> *The core debugging experience is shared, however, any launched servers aren't automatically forwarded.*

<sup>4</sup> *Guests don't have a local copy of the app, and therefore, the running app and any debug sessions need to start on the host's machine.*

<sup>5</sup> *The output of a test run would require that any resulting terminals, output panes and errors were also shared with guests.*

<sup>6</sup> *Almost all of these would use the Node.js `fs` module directly to create files, which wouldn't work.*

## Known Issues

The following are currently known extension issues, that could prevent them from working for guests within the context of a collaboration session (along with their workarounds), and therefore, could impact their workflow:

### Visual Studio Code

| Issue | Reason | Workaround |
|-|-|-|
| Using the Node.js `fs` module to detect/read files (e.g. a config file), or enumerate directories (and you aren't a language service). | Guests don't have local file access. | 1. Gracefully degrade the user-experience *(if possible).*<br /><br />2. Use the `openTextDocument` and `findFiles` workspace APIs to read and enumerate files. |
| Using the Node.js `fs` module to create or write files | *Same as above* | *N/A* You can use the `openTextDocument(Uri)` API to create an `untitled` file, but you can't save it directly to the file system, at a specific path. |
| Depending on a project-bundled library or tool | *Same as above* | 1. Bundle a fallback version of the dependency with the extension<br><br> 2. Support global installation to unblock guests if they choose to explicitly install it.<br><br> 3. Remote the state/action if possible, since the host would have the right dependencies available. |
| Using the Node.js `fs` module to create a directory | *Same as above* | *N/A* |
| Restricting functionality to documents that use the `file` scheme. | Files on the guest's side use the `vsls` scheme. | Add support for `vsls` documents ([example](https://github.com/CoenraadS/BracketPair/pull/73)) |
| Using the `Uri.file` method and/or `Uri.fsPath`/`TextDocument.fileName` members to serialize/parse URIs | *Same as above* | Use `Uri.parse` and `Url.toString()` instead, which maintain and respect file schemes ([example](https://github.com/micnil/vscode-checkpoints/pull/2)) |
| Using the `workspace.openTextDocument` method with a file path instead of a `Uri` | *Same as above* | Provide a `Uri` instance instead of a raw file path string ([example](https://github.com/micnil/vscode-checkpoints/pull/2)) |
| Using the `workspace.rootPath` property to detect the presence of a workspace | The `workspace.rootPath` property calls `Uri.fsPath` on the first `workspaceFolder` in the `workspace`, which has the same issue mentioned above | Use the `workspace.workspaceFolders` property to detect the presence of a workspace instead, and if needed, look at each `workspaceFolder`'s `Uri.scheme` to determine if it's local or not |
| Not specifying a document scheme when registering language services (either via a `LanguageClient`, or the `languages.register*` methods) | Guests receive the language service results from both their local extensions, and the host, and therefore, if both participants have the same language service extension installed, guests will see duplicate entries for certain things (e.g. auto-completion, code actions) | Restrict the language services to only `file` and `untitled` schemes ([example](https://github.com/vuejs/vetur/pull/756/files)) |
| Not checking a document's `Uri.scheme` before populating a `DiagnosticCollection` for it | *Same as above* | Only generate `Diagnostics` for `documents` whose `Uri.scheme` === `file` ([example](https://github.com/Huachao/vscode-restclient/pull/196)) |
| Not checking for workspace scheme when returning `Tasks` from a custom `TaskProvider`  | Guests display all remote and local tasks, and therefore, would display duplicates if both participants had the same extension installed  | Only return `Tasks` for `WorkspaceFolder`s whose `Uri.scheme` === `file` ([example](https://github.com/Microsoft/vscode-eslint/blob/0fdb7c74b093cae9dc08355e7235582a254f24c2/client/src/tasks.ts#L42)) |

## See also

- [Language and platform support](platform-support.md)
- [Connectivity requirements for Live Share](connectivity.md)
- [Security features of Live Share](security.md)
- [All major bugs, feature requests, and limitations](https://aka.ms/vsls-issues)
- [All feature requests and limitations](https://aka.ms/vsls-feature-requests)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
