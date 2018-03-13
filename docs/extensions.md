# Extensions and Ecosystem Support

One of the primary goals of Visual Studio Live Share is to enable developers to collaborate with each other, from the comfort of their favorite, and [**highly-customized**](https://marketplace.visualstudio.com/) tools. This way, ad-hoc interactions can occur frequently, while remaining visually familiar and ergonomic, regardless what you're helping with. To achieve this, it's critical that participants within a collaboration session are able to continue using any extensions which support their [personal preferences and workflows](#user-preference-extensions) (e.g. color themes, key bindings, editor productivity enhancers).

Additionally, to make the act of joining a collaboration session as instant as possible, while remaining highly-productive, the goal of Visual Studio Live Share is to enable guests to automatically leverage the project-specific tooling their host has shared. This way, you can simply click a link, launch your tool of choice, and begin collaborating, without any extra setup. To achieve this, it is critical that extensions, which power the core [edit, build and debug workflow](#app-supporting-extensions), are transparently "remoted" from the host to the guest, so that things like auto-completion, go-to-definition, and debugging "just work".

This document covers the current known state for the vast extension ecosystem, as well as a "scorecard" for the aforementioned goals. If you encounter an extension that doesn't meet this critera, and is critical to your personal workflow, then please [let us know!](https://github.com/MicrosoftDocs/live-share/issues/new)

- [Visual Studio Code](#user-specific-extensions)
  - [User-Specific Extensions](#user-specific-extensions)
  - [Project-Specific Extensions](#project-specific-extensions)
  - [Known-Issues (for extension authors)](#known-issues)
- Visual Studio (**coming soon!**)
- [Extensibility API](#extensibility-api)
  
## User-Specific Extensions 

Extensions that support user-specific customizations **must** work for the host, and **should** work for all guests. If an extension doesn't work properly for the host, that would be a regression, and is likely a bug in Visual Studio Live Share (please [file an issue](https://github.com/MicrosoftDocs/live-share/issues/new) if you see one!). If an extension doesn't behave as expected for a guest, it may require [changes in the extension itself](#known-issues), and we'll work with the ecosystem to address/improve these scenarios.

| Category | Example(s) | Guest-Supported? | Collaborative? |
|-|-|-|-|
| Color Themes | [One Dark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme), [Output Colorizer](https://marketplace.visualstudio.com/items?itemName=IBM.output-colorizer), [Rainbow String](https://marketplace.visualstudio.com/items?itemName=wk-j.vscode-rainbow-string), [Colored Regions](https://github.com/jmihelcic/colored-regions), [Indented Block Highlighting](https://marketplace.visualstudio.com/items?itemName=byi8220.indented-block-highlighting), [Todo Highlight](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight), [Bracket Pair Colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer) | ✅ | *N/A* |
| Icon Sets | [vscode-icons](https://marketplace.visualstudio.com/items?itemName=robertohuertasm.vscode-icons), [Visual Studio Classic Icons](https://marketplace.visualstudio.com/items?itemName=jez9999.vsclassic-icon-theme) | ✅ | *N/A* |
| Key bindings | [Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim), [IntelliJ IDEA Keybindings](https://marketplace.visualstudio.com/items?itemName=k--kato.intellij-idea-keybindings), [Emacs Friendly Keymap](https://marketplace.visualstudio.com/items?itemName=lfs.vscode-emacs-friendly) | ✅ | *N/A* |
| Snippets | [Angular v5 Snippets](https://marketplace.visualstudio.com/items?itemName=johnpapa.Angular2), [HTML Snippets](https://marketplace.visualstudio.com/items?itemName=abusaidm.html-snippets), [SVG Icons](https://marketplace.visualstudio.com/items?itemName=idleberg.svg-icons), [File Header](https://marketplace.visualstudio.com/items?itemName=mikey.vscode-fileheader) | ✅ | *N/A* <sup>1</sup> |
| Organization | [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync), [Project Manager](https://marketplace.visualstudio.com/items?itemName=alefragnani.project-manager), [Timeit](https://marketplace.visualstudio.com/items?itemName=smulyono.timeit), [Checkpoints](https://marketplace.visualstudio.com/items?itemName=micnil.vscode-checkpoints), [Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks) (❌) | ✅ <sup>2</sup> | *N/A* <sup>3</sup> |
| Productivity | [Auto-Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag), [Code Outline](https://github.com/patrys/vscode-code-outline), [Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight), [Increment Selection](https://marketplace.visualstudio.com/items?itemName=albymor.increment-selection), [Bracketeer](https://marketplace.visualstudio.com/items?itemName=pustelto.bracketeer), [Image Preview](https://marketplace.visualstudio.com/items?itemName=kisstkondoros.vscode-gutter-preview), [SVG Preview](https://marketplace.visualstudio.com/items?itemName=cssho.vscode-svgviewer), [JSON Helper](https://marketplace.visualstudio.com/items?itemName=zhoufeng.json-helper) (Hover), [Color Picker](https://marketplace.visualstudio.com/items?itemName=anseki.vscode-color), [CodeMetrics](https://marketplace.visualstudio.com/items?itemName=kisstkondoros.vscode-codemetrics) (CodeLens), [Git Co-Authors](https://github.com/rjimenezda/vscode-coauthor), [JavaScript Booster](https://marketplace.visualstudio.com/items?itemName=sburg.vscode-javascript-booster) (CodeActions), [Turbo Console Log](https://marketplace.visualstudio.com/items?itemName=ChakrounAnas.turbo-console-log), [Import Cost](https://github.com/wix/import-cost) (❌), [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) (❌) | ✅ <sup>2</sup> | ❌ <sup>3</sup> |
| REPLs | [REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client), [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner), [Quokka.js](https://marketplace.visualstudio.com/items?itemName=WallabyJs.quokka-vscode), [R](https://marketplace.visualstudio.com/items?itemName=Ikuyadeu.r) | ✅ <sup>4</sup> | ❌ <sup>3</sup>  |
| Resource Managers | [mssql](https://marketplace.visualstudio.com/items?itemName=ms-mssql.mssql), [ftp-simple](https://marketplace.visualstudio.com/items?itemName=humy2833.ftp-simple), [Azure Functions](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-azurefunctions), [Docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker) | ✅ <sup>5</sup> | ❌ <sup>3</sup>  |

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
| Grammars / Syntax highlighting | [Nginx](https://marketplace.visualstudio.com/items?itemName=shanoor.vscode-nginx), [Vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur), [DotEnv](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv), [ES6 String HTML](https://marketplace.visualstudio.com/items?itemName=hjb2012.vscode-es6-string-html) | ❌ | ✅ |
| Language Services | [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml), [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense) | ✅ <sup>1</sup>| ✅ <sup>2</sup> |
| JSON Schemas | | ❌ | ✅ |
| Linters | [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint), [Markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint), [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) | ❌ <sup>3</sup> | ✅ <sup>2</sup>  |
| Formatters | [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode), [Beautify](https://marketplace.visualstudio.com/items?itemName=HookyQR.beautify) | ❌ <sup>4</sup> | ✅ <sup>2</sup> |
| Debuggers | [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python), [Debugger for Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome) | ✅ <sup>5</sup> | ❌ <sup>6</sup> |
| Test Runners | [Java Test Runner](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-test), [Mocha Sidebar](https://marketplace.visualstudio.com/items?itemName=maty.vscode-mocha-sidebar), [Postman Runner](https://marketplace.visualstudio.com/items?itemName=eridem.vscode-postman) | ❌ <sup>7</sup> | ✅ <sup>2</sup> |

<sup>1</sup> *Currently only C# and JavaScript/TypeScript, with more support coming soon.*

<sup>2</sup> *Would only support the current active document, since guests don't have local file access.*

<sup>3</sup> *While the linters could run on the host's machine, the analysis output wouldn't currently be visible to any of the guests.*

<sup>4</sup> *When the host formatted a file, any guest-made changes would be formatted. However, a guest couldn't explicitly trigger a format, that would leverage a host-installed formatter.*

<sup>5</sup> *The core debugging experience is shared, however, any launched servers aren't automatically forwarded.*

<sup>6</sup> *Guests don't have a local copy of the app, and therefore, the running app and any debug sessions need to start on the host's machine.*

<sup>7</sup> *The output of a test run would require that any resulting terminals, output panes and errors were also shared with guests.*

## Known Issues

The following are currently known extension issues, that could prevent them from working for guests within the context of a collaboration session (along with their workarounds), and therefore, could impact their workflow:

| Issue | Reason | Workaround |
|-|-|-|
| Using the Node.js `fs` module to detect/read files (e.g. a config file), or enumerate directories. | Guests don't have local file access. | 1. Gracefully degrade the user-experience *(if possible).*<br /><br />2. Use the `openTextDocument` and `findFiles` workspace APIs to read and enumerate files. |
| Using the Node.js `fs` module to create or write files | *Same as above* | Use the `openTextDocument` API to create/open a file and then edit its `text` property. |
| Depending on a project-bundled library or tool | *Same as above* | 1. Bundle a fallback version of the dependency with the extension<br><br> 2. Support global installation to unblock guests if they choose to explicitly install it.<br><br> 3. Remote the state/action if possible, since the host would have the right dependencies available. |
| Restricting functionality to documents that use the `file` scheme. | Files on the guest's side use the `vsls` scheme. | Add support for `vsls` documents ([example](https://github.com/CoenraadS/BracketPair/pull/73)) |
| Using the `Uri.file` method and/or `Uri.fsPath`/`TextDocument.fileName` members to serialize/parse URIs | *Same as above* | Use `Uri.parse` and `Url.toString()` instead, which maintain and respect file schemes ([example](https://github.com/micnil/vscode-checkpoints/pull/2)) |
| Using the `workspace.openTextDocument` method with a file path instead of a Uri | *Same as above* | Provide a `Uri` instance instead of a raw file path string ([example](https://github.com/micnil/vscode-checkpoints/pull/2)) |

## Extensibility API

In addition to the core goals outlined in the beginning of this document, Live Share also wants to enable extension authors to enhance the default sharing experience in the following ways:

1. Contributing to the core collaborative feature set, based on behavior that only the extension would know about. In these scenarios, the host could have an extension installed, and potentially allow guests to benefit from it without also needing to have it installed

2. Enhancing their own experiences to be collaborative (e.g. syncing bookmarks between participants), by synchronizing any custom state and UI interactions. In these scenarios, only participants that had the custom extension installed would be able to take advantage of the added collaborativity.

This will require some form of API/SDK, which extensions can use to determine if/when the end-user is within a Live Share session, and if so, light up additional capabilities. The following represents a high-level overview of some of the extension points we've identified, and look forward to getting further feedback on:

| Shared Resource | Extensibility Point(s) |
|------------------|---------------------|
| User status | 1. Retrieving the list of participants within the current Live Share session (e.g. the [Git Co-Authors](https://marketplace.visualstudio.com/items?itemName=drrouman.git-coauthors) extension could use that to populate the host's commit message with)<br /><br /> 2. Updating a participant's location (outside of just editors), as well as allowing other participant's to jump to/pin to them as they move into custom extension UI (e.g. a participant is navigating a MongoDB database using the [Azure Cosmos DB](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-cosmosdb) extension). |
| Workspace | *N/A* - Live Share can transparently share all files, edits, cursors and highlights, without requiring an extension to do anything extra if it modified the file system and/or cursor/highlight position. |
| Language Services | *N/A* - Long-term, Live Share can transparently remote all language services (e.g. go to definition, document formatting, CodeLens) to the guest, including those that are contributed via extensions (e.g. [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense), [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)) |
| Debugging Sessions | *N/A* - Live Share can transparently remote all debugging sessions, including those that are enabled by custom extensions (e.g. [Debugger for Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome)) |
| Servers | 1. Sharing a server that an extension was responsible for starting, and then optionally specifying whether a browser should be launched on the guest's machine as well (e.g. a debug adapter that launched a web server).  |
| Custom | 1. Synchronizing arbtrary state and/or user interactions (e.g. the [Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks) extension syncing CRUD operations across participants, the [Maven for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-maven) extension exposing the project-wide view to guests) | 
