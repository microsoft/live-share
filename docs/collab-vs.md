# Visual Studio Enabled Features

This document provides information on capabilities enabled by the Visual Studio Visual Studio Live Share extension. See [getting started](getting-started.md) for information on sharing and joining collaboration sessions in VS and other tools.

**Table of Contents**
- [Recap: Owners and participants](#recap-owners-and-participants)
- [Collaborative editing](#collaborative-editing)
- [Collaborative debugging](#collaborative-debugging)
- [Additional capabilities](#additional-capabilities)
    - [Sharing a local server](#sharing-a-local-server)
<!-- - [Additional known participant limitations](#additional-known-participant-limitations) -->
- [Known participant limitations](#known-participant-limitations)
- [More information](#more-information)
    - [Getting started and managing collaboration sessions](getting-started.md)
    - [Visual Studio Code features](collab-vscode.md)
    
## Recap: Owners and participants
All collaboration activities in Visual Studio Live Share involve a single "owner" with one or more "participants." The owner is the person that started the collaboration session and therefore not only owns the session but the content being shared as well.  Anyone that joins an owner's collaboration session is then considered a participant. See [getting started](getting-started.md) for information on starting and joining collaboration sessions.

Owners can use all of their tools and services as they would normally but participants are only given access to the specific things the owner has shared with them. This includes code, running servers, debugging sessions and more.  Currently all content that is shared is kept on the owner's machine and not synchronized to the cloud or on the participant's machine which enables _instant access_ and _increased security_.  The advantage is that the entire solution is available the moment a participant joins and the moment an owner ends a collaboration session the content is no longer available since temp files created during the session by the editor to improve performance are automatically cleaned up. 

## Collaborative editing
Once a participant has joined a collaboration session all collaborators will immediately be able to see each others edits and highlights in real-time. Simply select a file from the Solution Explorer and start editing. Participants will see edits as you make them and can contribute themselves in real time so you can iterate and rapidly nail to down solutions.

![Screen shot showing co-editing](media/vs-coedit.png)

In addition, each collaborator can navigate to any file in the shared project. This means you can edit together in the same file or independently in separate files and thus seamlessly switch between investigation, small tweaks, and collaborative editing. The resulting edits are persisted on the owner's machine so there is no need to synchronize, push, or send files around once you're done editing. The edits are "just there."

Further, to better allow you to highlight where problems might exist or convey ideas, selections are also visible to all participants.

![Screen shot showing highlighting](media/vs-highlight.png)

### Moving to a collaborator's edit location

Each collaborator in your the session can be seen in the upper right and you can hover over the avatar to see their full information.  Further, simply clicking on this same icon to jumps the active editor to their exact location. 

![Screen shot showing user](media/vs-person.png)

### Pinning to a collaborator's edit location

At times the person you are collaborating with may need to show you a few different places in code to explain a problem or possible solution. While you could repeatedly jump to their location as described above you can also "pin" the editor to their location.

Simply hover over a user and you will see a pin icon. Simply click the pin to start following them and as the collaborator moves around or between files you will be moved along with them.

![VS Code pin](media/vs-pin-hover.png)
![VS Code pin](media/vs-pinned.png)

To make it easy to hop in and out of pinning, the editor is un-pinned if any of the following occurs:
1. You edit or make a selection
3. You click the pin icon again

Afterwards you can simply click the pin icon again to follow their location once again.

<!--
### Known co-editing participant limitations
While Visual Studio Live Share's approach provides instant access and better security, there are currently some shortcomings participants will experience while co-editing. (Owners do not have these limitations.)

We want to hear from you! See [this query](https://aka.ms/vsls-feature-requests/co-edit) to find a complete list of logged limitations for co-editing. Up-vote (👍) fixes for those you feel are critical or raise new issues if there is something you need missing from the list!

To jump start the conversation, the following are some limitations of particular note for _participants_ (only):

- Participants are currently limited to using "folder view" in the solution explorer ([Up-vote](https://github.com/Microsoft/live-share/issues/5))
- Participants need to manually edit config files to view or change project dependencies (packages/references) ([Up-vote](https://github.com/Microsoft/live-share/issues/17)) 
- Editing features in extensions that directly access the file system will be unavailable ([Vote on extensions you want!](https://github.com/Microsoft/live-share/issues/9))
- Full intellisense, fixers, and other advanced editing features are only available to C#, ASP.NET languages/markup, HTML, CSS, JavaScript, and TypeScript. ([Vote on the languages/platforms you want!](https://github.com/Microsoft/live-share/issues/12))
- The undo and redo stacks are currently combined across all participants ([Up-vote](https://github.com/Microsoft/live-share/issues/7))
- Participants are not able to use the Task Runner Explorer or see its output ([Up-vote](https://github.com/Microsoft/live-share/issues/18))
-->

## Collaborative Debugging
Visual Studio Live Share's collaborative debugging feature is a powerful and unique way to debug an issue. Beyond enabling a collaborative experience to troubleshoot problems it also gives all collaborators the ability to investigate issues that may be environment specific by providing a shared debugging session on the owner's machine. 

> **Note:** All traffic is secured and encrypted and access is limited to only those resources needed to facilitate debug and browser access to the web application. These resources are only available to participants of the collaboration session.

Using it simple. The owner simply needs to start debugging via the usual means in Visual Studio.

![VS Debug button](media/vs-debug-button.png)

<!--
While the build and deployment is happening, all participants can see progress in the Output window. This is also true if the owner opted to "Start with Debugging" or simply build the project or solution.

![VS output window](media/vs-output.png)
-->

Once the debugger attaches on the owner's side, all participants are also attached. While there is one debugging "session" running on the owner's machine, all collaborators are connected to it and have their own view. 

> **Tip:** If you want to change when and how co-debugging happens, you can change the default behaviors via settings in **Tools > Options > Live Share**.

![VS debugger attached](media/vs-debugger.png)

Anyone can step through the debugging process which enables seamless switching between collaborators without having to negotiate control.

Each collaborator can investigate different variables, jump to different files in the call stack, variables, and breakpoints are shared across all participants and can be added by anyone. Co-editing features then allow each collaborator to track where the other is located to provide the unique ability to seamlessly switch between concurrently investigating different aspects of the problem and collaboratively debugging.

> **Tip:** You can participate in VS Code debugging sessions from VS and vice versa! If the owner is using VS Code, you can check out the [VS Code instructions](collab-vscode.md#collaborative-debugging) but the steps are roughly the same. 


## Automatic web app sharing during debugging

Even better, by default if the owner's project is configured to automatically start a web browser to connect to the running web application when debugging, Live Share will automatically do the same on each participant's machine!

This is done in a secure way and the remote web application is only available to the participants during the debugging session by default.  See [sharing a local server](#sharing-a-local-server) for information on how to share server access for the duration of the session.

> **Tip:** If you don't like the automated browser sharing behavior and want to change it (either when you are an owner or a participant), you can update settings in **Tools > Options > Live Share**.

![Animation of concurrent debugging](media/co-debug.gif)

## Detaching and attaching or reattaching to a co-debugging session

Since participants may wish to stop debugging temporarily, they can simply click the "stop" icon in the debug toolbar to detatch the debugger without affecting the owner or other participants.

If you've updated settings so that as a participant you do not auto-attach to a co-debugging session or if you simply want to re-attach later, you can simply select the desired running debugging session from the "Select Startup Item..." dropdown...

![VS Debug button](media/vs-select-reattach.png)

...and then click it to attach.

![VS Debug button](media/vs-reattach.png)

<!--
### Known co-debugging participant limitations
There are currently some shortcomings participants will experience while building, running, or co-debugging. (Owners do not have these limitations.)

As before, we want to hear from you! See [this query](http://aka.ms/vsls-feature-requests/co-debug) to find a complete list of logged limitations for co-debugging. Up-vote (👍) fixes for those you feel are critical or raise new issues if there is something you need missing from the list!

To jump start the conversation, the following are some limitations of particular note for _participants_ (only):

- Participants cannot currently start a build or debugging session on their own ([Up-vote](https://github.com/Microsoft/live-share/issues/21))
- Participants open and see saved .diagsession results but cannot see or use profilers directly ([Up-vote](https://github.com/Microsoft/live-share/issues/19))
- Co-debugging is currently limited to .NET/.NET Core and Node.js based applications ([Vote on languages/platforms you want!](https://github.com/Microsoft/live-share/issues/12))
- Participants are not able to use the Task Runner Explorer to start, stop, or build the application ([Up-vote](https://github.com/Microsoft/live-share/issues/18))
- Build/run/debug features in extensions that require direct access the file system will be unavailable ([Vote on extensions you want!](https://github.com/Microsoft/live-share/issues/9))

-->

## Additional Capabilities

### Sharing a local server

From time to time, as a collaboration session owner you may find that you want to share additional local servers or services with participants. This can range from other RESTful end-points to databases or other servers.  For security purposes, only servers running on ports you specify are available to other participants. Fortunately, its easy to add another one.

1. Click on the session state button in the upper right corner and select "Manage Shared Local Servers"

![Manage Shared Local Servers](media/vs-share-local-servers.png)

2. In the dialog that appears, click "Add" and enter the port number the server is running on locally and a name, hit enter, then OK.

![Manage Shared Local Servers](media/vs-manage-local-shared-servers.png)

That's it! 

Participants will now be able to use this same port from their machine to access the server or service if it is free. Otherwise it will be automatically mapped to a free port. You can view shared local servers by clicking the session state button in the upper right corner and selecting "View Shared Local Servers."

![Viw Shared Local Servers](media/vs-view-shared-servers.png)

To **stop** sharing a local server, the owner simply needs to hare state button in the upper right corner as above, select "Manage Shared Local Servers", and select the appropriate port, and click "Remove".

<!--
### Additional known participant limitations
In addition to the co-editing and co-debugging limitations listed above, there are a few others worth noting for participants. As above, owners do not have these limitations.  

Once again, we want to hear from you! See [this query for all open feature requests](https://aka.ms/vsls-feature-requests). Up-vote (👍) fixes for those you feel are critical or raise new issues if there is something you need missing from the list!

To jump start the conversation, the following are some additional limitations of particular note for _participants_ (only):

- Participants cannot currently use source control diffing ([Up-vote](https://github.com/Microsoft/live-share/issues/15))
- Participants cannot currently perform source control operations ([Up-vote](https://github.com/Microsoft/live-share/issues/16))
- Extension features that directly access the file system will be unavailable ([Vote on extensions you want!](https://github.com/Microsoft/live-share/issues/9))
- Participants cannot currently see results or use the Test Explorer ([Up-vote](https://github.com/Microsoft/live-share/issues/20))
- Participants are not able to use the Task Runner Explorer or see its output ([Up-vote](https://github.com/Microsoft/live-share/issues/18))
-->

## Known participant limitations
While there are currently some shortcomings participants will experience while using the features described above, collaboration session owners retain the complete functionality of their tool of choice. See the following for more information:

- [Co-editing limitations](http://aka.ms/vsls-feature-requests/co-edit)
- [Co-debugging limitations](http://aka.ms/vsls-feature-requests/co-debug)
- [Additional limitations](http://aka.ms/vsls-feature-requests)

## More information

- [Getting started](getting-started.md)
- [Visual Studio Code features](collab-vscode.md)
- [FAQ](https://aka.ms/vsls-faq)
