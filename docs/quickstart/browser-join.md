---
title: "Joining from the browser  | Microsoft Docs"
description: "Introducing joining from the browser"
ms.date: 03/18/2020
ms.reviewer: ""
ms.suite: ""
ms.topic: "quickstart"
author: "fubaduba"
ms.author: "fishah"
manager: "joncart"
ms.workload: 
  - "liveshare"
---


<!--
Copyright &copy; Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Live Share in Visual Studio Code for the Web

Visual Studio Code is now available in the [browser](https://vscode.dev). This brings to you a development environment tha runs completely in the browser!
From any modern browser (like Edge and Chrome), you will be able to access the local file system, or upload and download individual files. This will unlock use-cases like local file viewing and editing, taking notes in Markdown, building client-side HTML, Javascript and CSS applications with browser based tools for debugging.
Live Share will be available for collaboration from this entirely new experience for **both** hosting and joining sessions from `https://vscode.dev/liveshare`.



## How to host a Live Share session from the browser?

To start a Live Share session from the browser, you need the Live Share extension installed. An easy way to do this is by launching `https://vscode.dev/liveshare`. This will automatically install the extension for you in the web editor. You can also always download the extension the way you would in Visual Studio Code on the desktop by going to *Extensions -> Live Share*

### 1. Host: starts session

To begin, the host should go to either Visual Studio or VS Code to start a collaboration session. When the host shares a folder or project.


> [!NOTE]
You can turn on *settings sync* on Visual Studio Code to get all the compatible extensions in the browser client.


You can now start a Live Share session from an empty workspace. However, we recommend you open your folder or repository of choice before sharing your context with someone. 

### 2. Guest: uses shared link to join from browser

Live Share will generate a join link that can be shared with the guest. The guest can now use this link to be navigated to a web page, which now gives them an option to continue to the browser.


![Screenshot of opening folder in web editor](../media/vscode-web-open-folder.png)

The image above shows a local folder being open in the web editor. You can also open a GitHub repository or a GitHub pull request.

### 3. Guest: Enjoys full fidelity collaboration experience from browser

Once the guest has joined the session, they can carry on just like they would if they were collaborating from the desktop clients.


You can now go to the Live Share tab and click `Share` to start a collaboration session.

Live Share will generate a join link that can be shared with the guest.

![Screenshot of Live Share session join link generated](../media/vscode-web-join-link.png)


## How to join a Live Share session from the browser?

All Live Share sessions start in Visual Studio Code in the Web, when you click on the link shared by the host. Once in the web editor, you can launch the desktop app if you'd like more features of the editor during your collaboration session.

<!---
# Frequently asked questions 

##### 1. Is there an environment running in the background, that is hosting my session in the browser?
When you join a Live Share session from the browser, there is no new environment spun up. It is a serverless service. 
##### 2. Do I have to pay for the service of joining from the browser?
Joining from the browser is free, much like all of Live Share.

##### 3. How is this different from Visual Studio Online?
When you join from the browser, you only access the VS Code client from the browser during the session. Once the session ends, all the files and folders along with editor capabilities will close. To use an editor in the browser, backed with your own environment to edit your own files, you must use [Visual Studio Online.](aka.ms/vso)

##### 4. Does this work for all browsers?
Yes. This works on all browsers. 
##### 5. Is there a VS client that I can use in the browser?
We do not have this available yet. 

# Feedback and issues 
This is a preview feature, and we hope to get user feedback to improve the experience. Please fill out any feedback or issues you see on our GitHub repo [here.](https://github.com/MicrosoftDocs/live-share/issues/new?template=bug_report.md)

--->
