---
title: Co-debug in a collaboration session in Visual Studio
description: Learn how to co-debug in collaboration sessions using powerful tools included in Visual Studio and Live Share.
ms.custom:
ms.date: 12/30/2021
ms.reviewer: ""
ms.suite: ""
ms.topic: "conceptual"
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

# Co-debug in a collaboration session in Visual Studio

Visual Studio Live Share's collaborative debugging feature is a powerful and unique way to debug an issue. Beyond enabling a collaborative experience to troubleshoot problems, it also you and other participants in your session the ability to investigate issues that may be environment specific by providing a shared debugging session on the host's machine.

> **Security Tip:** Given all participants can independently navigate and edit files, as a host, you may want to restrict which files guests are able to access in your project via a .vsls.json file. You should also be aware that Console/REPL access means that participants can execute commands on your machine so you should only co-debug with those you trust. As a guest, it is also important to realize you may not be able to follow the debugger as it step into certain files restricted files as a result of these settings. See [controlling file access and visibility](../reference/security.md#controlling-file-access-and-visibility) for details.

Using it simple. The collaboration session host simply needs to start debugging via the usual means in Visual Studio.

![VS Debug button](../media/vs-debug-button.png)

Once the debugger attaches on the host's side, all guests are also automatically attached as well. While there is one debugging "session" running on the host's machine, all participants are connected to it and have their own view.

> [!TIP]
> If you want to change when and how co-debugging happens, you can change the default behaviors via settings in **Tools > Options > Live Share**.

![VS debugger attached](../media/vs-debugger.png)

Anyone can step through the debugging process which enables seamless switching between collaborators without having to negotiate control.

> [!NOTE]
> See [platform support](../reference/platform-support.md) for the state of debugging features by language or platform.

Each collaborator can investigate different variables, jump to different files in the call stack, inspect variables, and even add or remove breakpoints. Co-editing features then allow each participant orator to track where the others are located to provide the unique ability to seamlessly switch between concurrently investigating different aspects of the problem and collaboratively debugging.

> [!NOTE]
> While in a read-only collaboration session, a guest will not be able to step through the debugging process. They can however, still add or remove breakpoints, and inspect variables.

> [!TIP]
> You can also participate in VS Code debugging sessions from Visual Studio and vice versa! Check out the [Visual Studio instructions](vscode.md#co-debugging) on co-debugging for more information.

## Automatic web app sharing

Even better, for ASP.NET Web App projects, by default if the host's project is configured to automatically start a web browser to connect to the running web application when debugging, Live Share will automatically do the same on each guest's machine! This is done in a secure way and the remote web application is only available to the guests during the debugging session by default.

See [share a server](#share-a-server) for information on how to share server access for other project types and/or for the duration of the session.

> [!TIP]
> If you don't like the automated browser sharing behavior and want to change it, you can update settings in **Tools > Options > Live Share**.

![Animation of concurrent debugging](../media/co-debug.gif)

## Change when Visual Studio joins debugging sessions

By default, as a guest, you'll be automatically attached to debugging sessions when they are shared by the host. However, in some cases you may find this behavior disruptive. Fortunately, you can change it as follows:

1. Go to **Tools > Options > Live Share**
2. Change the **Join debug session option** to one of the following:

| Option | Behavior |
|--------|----------|
| Automatic | The default. As a guest, you'll automatically join any shared debugging session the host starts. |
| Prompted | As a guest, you are prompted as to whether you want to join a shared debugging session when it is started by the host. |
| Manual | As a guest, you'll need to manually join any debugging sessions. See [detaching and reattaching](#detaching-and-reattaching).|

## Detaching and reattaching

As a guest, you may wish to stop debugging temporarily. Fortunately, you can simply click the "stop" icon in the debug toolbar to detach the debugger without affecting the host or other guests.

If you've updated settings so you no longer auto-attach or if you simply want to reattach later, you can simply select the desired running debugging session from the "Select Startup Item..." drop down...

![VS Debug button when detaching](../media/vs-select-reattach.png)

...and then click it to attach.

![VS Debug button when reattaching](../media/vs-reattach.png)

## Next steps

> [!div class="nextstepaction"]
> [Share a server or terminal](share-server-vs.md)
