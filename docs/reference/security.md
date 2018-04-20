---
title: "Security - Visual Studio Live Share | Microsoft Docs"
description: "Information on the security features of Visual Studio Live Share."
ms.custom:
ms.date: 04/19/2018
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

# Security features of Live Share

## Connectivity

All connections in Visual Studio Live Share are SSH or SSL encrypted and authenticated against a central service to ensure that only those in the collaboration session can gain access to its content. By default, Live Share attempts a direct connection and falls back on a cloud relay if a direct connection between a given guest and the host cannot be established. In addition, Live Share's cloud relay does not persist any traffic routed through it and does not "snoop" the traffic in any way.

You can find more information about connectivity requirements and how to tweak these behaviors in the [connectivity requirements for Live Share](connectivity.md) article.

## Invite links and accept / reject mode

## Controlling file access and visibility

As a guest, Live Share's remote model gives you quick access to files and folders the host has shared with you without having to sync the entire contents of a project. As a host, an added advantage of this model is that you can opt to "exclude" files you do not want to share with anyone without sacrificing on functionality. Your guests can still participate in things like debuging sessions that would normally require access to these files to perform on their own.

Live Share currently uses a **.vsls.json** file to alter its default behaviors around hiding or "excluding" files. In addition to providing control, these files can be committed to source control so anyone cloning a project will be able to take advantage of these rules with no additional effort on their part.

Here's an example .vsls.json file:

    {
        "gitignore":"none",
        "excludeFiles":[
            "*.p12",
            "*.cer",
            "token",
            ".gitignore"
        ],
        hideFiles: [
            "bin",
            "obj"
        ]
    }

### Properties

The **excludeFiles** property allows you to specify a list of glob file patterns very much like those found .gitignore files that should be excluded from ever being sent to guests. This includes if the guest *follows or jumping to the host's edit location, debugging, any code navigation features like go to definition, and more.* It is intended for files you never wish to share under any circumstances like those containing secrets, certificates, or passwords. For example, since they control security, .vsls.json files are always excluded.

The **hideFiles** property is similar, but not quite as strict. These files are simply hidden from the file tree. If you happened to step into one of these files during debugging for example, it is still opened in the editor. This property is primarily useful if you do not have a .gitignore file setup or if you want to hide more or less than you find in the file to simply avoid clutter or confusion.

The **gitignore** setting establishes how Live Share should process the contents of .gitignore files in shared folders. By default, rules established in .gitignore files are treated as if they were specified in "hideFiles". Options are:

| Option | Result |
|--------|--------|
| `none` | .gitignore contents are not considered. |
| `hide` | **The default.** .gitignore contents are processed as if they were in the "hideFiles" property. |
| `exclude` | .gitignore contents are processed as if they were in the "excludeFiles" property. |

A downside of the `exclude` setting is that the contents of folders like node_modules are frequently in .gitignore but can be useful to step into during debugging. Consequently, Live Share supports the ability reverse a rule using "!" in the excludeFiles property. For example:

    {
        "gitignore":"exclude",
        "excludeFiles":[
            "!node_modules
        ]
    }

### .vsls.json files in sub-folders

Finally, just like .gitignore, .vsls.json files can be placed in sub-folders. Rules determined by starting with the .vsls.json file in the root folder you have shared (if present) and looking at each sub-folder leading to a given file to look for .vsls.json files to process. The contents of .vsls.json files in folders farther down the file tree supplement (or override) rules established at higher levels and are applied to the files at the appropriate level.

## See also

- [Connectivity requirements for Live Share](reference/connectivity.md)
- [How-to: Collaborate using Visual Studio Code](../use/vscode.md)
- [How-to: Collaborate using Visual Studio](../use/vs.md)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
