# Visual Studio Enabled Features

This document provides information on capabilities enabled by the Visual Studio Project Cascade extension. See [getting started](getting-started.md) for information on sharing and joining collaboration sessions in VS and other tools.

**Table of Contents**
- [Recap: Owners and participants](#recap-owners-and-participants)
- [Collaborative editing](#collaborative-editing)
- [Collaborative debugging](#collaborative-debugging)
- [Additional capabilities](#additional-capabilities)
    - [Shared terminals / command prompts](#shared-terminals--command-prompts)
    - [Sharing a local server](#sharing-a-local-server)
    - [Download a copy](#download-a-copy)
- [Additional known participant limitations](#additional-known-participant-limitations)
- [More information](#more-information)
    - [Getting started, sharing, and joining](getting-started.md)
    - [Visual Studio Code features](collab-vscode.md)
## Recap: Owners and participants
All collaboration activities in Project Cascade involve a single "owner" and one or more "participants."  The owner is the person that started the collaboration session and therefore not only owns the session but the content being shared as well.  Participants are then anyone that joins an owner's collaboration session. See [getting started](getting-started.md) for information on starting and joining collaboration sessions.

Owners can use all of their tools and services as they would normally but participants are only given access to the specific things the owner has shared with them. This includes code, running servers, debugging sessions and more. Currently all content that is shared is kept on the owner's machine and not synchronized to the cloud or on the participant's machine which enables _instant access_ and _increased security_. 

The advantage is that the entire solution is available the moment a participant joins and the moment an owner ends a collaboration session, the content is no longer available to any participant. While content will not be available to participants if the owner's machine is offline/shut down during a session, the collaboration session will automatically start up again for participants when the owner's machine is back online and the tool is re-opened.  

## Collaborative editing
Once a participant has joined a collaboration session all collaborators will immediately be able to see each others edits and highlights in real-time. Simply select a file from the Solution Explorer and start editing. Participants will see edits as you make them and can contribute themselves in real time so you can iterate and rapidly nail to down solutions.

![Screen shot showing co-editing](media/vs-coedit.png)

In addition, each collaborator can navigate to any file in the shared project. This means you can edit together in the same file or independently in separate files and thus seamlessly switch between investigation, small tweaks, and collaborative editing. The resulting edits are persisted on the owner's machine so there is no need to synchronize, push, or send files around once you're done editing. The edits are "just there."

Further, to better allow you to highlight where problems might exist or convey ideas, selections are also visible to all participants.

![Screen shot showing highlighting](media/vs-highlight.png)

Since you may want to quickly jump to where another collaborator is located, the upper right corner shows you who is currently in the collaboration session and you can go to their exact location by simply double-clicking on their icon.  

![Screen shot showing users in upper-right](media/vs-upper-right.png)

### Known co-editing participant limitations
While Project Cascade's approach provides instant access and better security, there are currently some shortcomings participants will experience while co-editing. (Owners do not have these limitations.)

We want to hear from you! See [this query](https://github.com/Microsoft/project-cascade/issues?utf8=%E2%9C%93&q=is%3Aissue%20is%3Aopen%20label%3Afeature-request%20label%3A%22area%3A%20co-edit%22%20sort%3Areactions-%2B1%20) to find a complete list of logged limitations for co-editing. Up-vote (👍) fixes for those you feel are critical or raise new issues if there is something you need missing from the list!

To jump start the conversation, the following are some limitations of particular note for _participants_ (only):

- Participants are currently limited to using "folder view" in the solution explorer ([Up-vote](https://github.com/Microsoft/project-cascade/issues/5))
- Participants need to manually edit config files to view or change project dependencies (packages/references) ([Up-vote](https://github.com/Microsoft/project-cascade/issues/17)) 
- Editing features in extensions that directly access the file system will be unavailable ([Vote on extensions you want!](https://github.com/Microsoft/project-cascade/issues/9))
- Full intellisense, fixers, and other advanced editing features are only available to C#, ASP.NET languages/markup, HTML, CSS, JavaScript, and TypeScript. ([Vote on the languages/platforms you want!](https://github.com/Microsoft/project-cascade/issues/12))
- The undo and redo stacks are currently combined across all participants ([Up-vote](https://github.com/Microsoft/project-cascade/issues/7))
- Participants are not able to use the Task Runner Explorer or see its output ([Up-vote](https://github.com/Microsoft/project-cascade/issues/18))
    - However, participants can use a shared terminal / command prompt to run CLI commands.  See [shared terminals](#shared-terminals--command-prompts).

## Collaborative Debugging
Project Cascade's collaborative debugging feature is a powerful and unique way to debug an issue. Beyond enabling a collaborative experience to troubleshoot problems it also gives all collaborators the ability to investigate issues that may be environment specific by providing a shared debugging session on the owner's machine. 

> **Note:** All traffic is secured and encrypted and access is limited to only those resources needed to facilitate debug and browser access to the web application. These resources are only available to participants of the collaboration session.

Using it simple. The owner simply needs to start debugging via the usual means in Visual Studio.

![VS Debug button](media/vs-debug-button.png)

> **Tip:** You can participate in VS Code debugging sessions from VS and vice versa! If the owner is using VS Code, you can check out the [VS Code instructions](collab-vscode.md#collaborative-debugging) but the steps are roughly the same. 

While the build and deployment is happening, all participants can see progress in the Output window. This is also true if the owner opted to "Start with Debugging" or simply build the project or solution.

![VS output window](media/vs-output.png)

Once the debugger attaches on the owner's side, all participants are also attached. While there is one debugging "session" running on the owner's machine, all collaborators are connected to it and have their own view. A browser window on connected to the web application running on the owner's machine also automatically starts up.

![VS debugger attached](media/vs-debugger.png)

Anyone can step through the debugging process which enables seamless switching between collaborators without having to negotiate control.

Each collaborator can investigate different variables, jump to different files in the call stack, variables, and breakpoints are shared across all participants and can be added by anyone. Co-editing features then allow each collaborator to track where the other is located to provide the unique ability to seamlessly switch between concurrently investigating different aspects of the problem and collaboratively debugging.

![Animation of concurrent debugging](media/co-debug.gif)

Since participants could get disconnected for some reason or may wish to stop debugging temporarily, Project Cascade also allows them to re-attach by simply launching the debugging session via standard means.

![VS Debug button](media/vs-debug-button-participant.png)

### Known co-debugging participant limitations
There are currently some shortcomings participants will experience while building, running, or co-debugging. (Owners do not have these limitations.)

As before, we want to hear from you! See [this query](https://github.com/Microsoft/project-cascade/issues?utf8=%E2%9C%93&q=is%3Aissue%20is%3Aopen%20label%3Afeature-request%20label%3A%22area%3A%20co-debug%22%20sort%3Areactions-%2B1%20) to find a complete list of logged limitations for co-debugging. Up-vote (👍) fixes for those you feel are critical or raise new issues if there is something you need missing from the list!

To jump start the conversation, the following are some limitations of particular note for _participants_ (only):

- Participants cannot currently start a build or debugging session on their own ([Up-vote](https://github.com/Microsoft/project-cascade/issues/21))
- Participants open and see saved .diagsession results but cannot see or use profilers directly ([Up-vote](https://github.com/Microsoft/project-cascade/issues/19))
- Co-debugging is currently limited to .NET/.NET Core and Node.js based applications ([Vote on languages/platforms you want!](https://github.com/Microsoft/project-cascade/issues/12))
- Participants are not able to use the Task Runner Explorer to start, stop, or build the application ([Up-vote](https://github.com/Microsoft/project-cascade/issues/18))
    - However, participants can use a shared terminal / command prompt to run CLI commands.  See [shared terminals](#shared-terminals--command-prompts).
- Build/run/debug features in extensions that require direct access the file system will be unavailable ([Vote on extensions you want!](https://github.com/Microsoft/project-cascade/issues/9))

## Additional Capabilities

### Shared terminals / command prompts

Modern development often involves the use of certain command line tools. Project Cascade provides a shared terminal capability that allows participants to use these command line tools collaboratively on the owner's machine. While not started by default for security reasons, the collaboration session owner can get one going quickly. 

1. The owner can click on the share state button in the upper-right hand corner and selected "Shared Terminal". 

    ![VS Shared Terminal Button](media/vs-terminal-button.png)

2. At this point a shared terminal session with the VS developer command prompt is started on the owners machine and all participants have access.

    ![VS Shared Terminal](media/vs-terminal.png)

3.  The owner can terminate the terminal session at any time by simply closing the tool window.


### Sharing a local server

**TODO:** Update with UX details as known

From time to time, as a collaboration session owner you may find that you want to share additional local servers or services with participants. This can range from other RESTful end-points to databases or other servers.  For security purposes, only servers running on ports you specify are available to other participants. Fortunately, its easy to add another one.

1. Click on the share state button in the upper right corner and select "Share Local Server"

2. Enter the port number the server is running on and optionally a name.

That's it!

To **stop** sharing a local server, the owner simply needs to hare state button in the upper right corner as above, select "Stop Sharing Local Server", and select the port they want to stop sharing.

### Download a copy

As a participant, you may get to a point where you need to get a snapshot of the code for either local debugging purposes or to do some deep investigation while the owner is away. This is easy to do.

1. Click on the share state button in the upper right corner and select "Download a Copy"

3. Select the destination folder.

4. Wait for the download to complete.

That's it! You can now unzip the result in a different location. Note that this copy is not kept in sync with the owner's edits.

## Additional known participant limitations
In addition to the co-editing and co-debugging limitations listed above, there are a few others worth noting for participants. As above, owners do not have these limitations.  

Once again, we want to hear from you! See [this query for all open feature requests](https://aka.ms/project-cascade/feature-requests). Up-vote (👍) fixes for those you feel are critical or raise new issues if there is something you need missing from the list!


To jump start the conversation, the following are some additional limitations of particular note for _participants_ (only):

- Participants cannot currently use source control diffing ([Up-vote](https://github.com/Microsoft/project-cascade/issues/15))
- Participants cannot currently perform source control operations ([Up-vote](https://github.com/Microsoft/project-cascade/issues/16))
- Extension features that directly access the file system will be unavailable ([Vote on extensions you want!](https://github.com/Microsoft/project-cascade/issues/9))
- Participants cannot currently see results or use the Test Explorer ([Up-vote](https://github.com/Microsoft/project-cascade/issues/20))
- Participants are not able to use the Task Runner Explorer or see its output ([Up-vote](https://github.com/Microsoft/project-cascade/issues/18))
    - However, participants can use a shared terminal / command prompt to run CLI commands.  See [shared terminals](#shared-terminals--command-prompts).

## More information

- [Getting started](getting-started.md)
- [Visual Studio Code features](collab-vscode.md)
- [Roadmap](roadmap.md)
- [FAQ](faq.md)
