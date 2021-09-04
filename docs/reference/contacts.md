---
title: "Presence | Microsoft Docs"
description: "Information on the presence service for contacts for Visual Studio Live Share."
ms.custom:
ms.date: 10/08/2019
ms.reviewer: ""
ms.suite: ""
ms.topic: "reference"
author: "fubaduba"
ms.author: "fishah"
manager: "JonathanCarter"
ms.workload: 
  - "liveshare"
---

# Contacts in Live Share 

So you have been using Live Share and notice that sending links via an external application (like chat or email) can get old really fast? We know that if we want to encourage collaboration, there needs to be the least amount of friction possible for you to love it. This is why Live Share now has **contacts** with **status** .

> Contacts will be automatically enabled for all versions of **Live Share v1.0.950** onwards.

Contacts will appear in your Live Share window as a separate pane, as seen in the image below: 

![Contacts](../media/vscode-contacts-intro.png)

<em> Showing contacts pane in the Live Share window</em>

## Who shows up in my contacts?

Your contacts pane is made displays two types of contacts that support developers' natural workflows while working.

### 1. Recent Contacts

 These are developers  you've previously collaborated with using Live Share. In practice, most developers frequently collaborate with the same people, and therefore, the recent list enables a more repeatable means of working with your team/classroom/etc.

### 2. Suggested Contacts

These are developers that have contributed to your currently open project within the last 30 days. In practice, these are the folks you're likely to want to collaborate with, and therefore, we suggest them in order to make it easier to get started.

## Direct user invitations

All your contacts can be invited directly to a Live Share session from within your editor.They'll get a toast notification that gives them the option to join the session or not. This removes the need to exchange session URLs entirely.
![DirectInvitationVSCode](https://user-images.githubusercontent.com/51928518/66443914-e59c5d00-e9f5-11e9-957a-b1a92949d660.gif)
<em>A Live Share host (left) directly inviting a peer (right) into a session</em>

## How does status for contacts work?

Once developers sign-in with Live Share, **their availability status will be published to their peers.** As a result, you can see that someone on your team is online, and then immediately start collaborating with them, using direct invitation as seen above.
Your status can be set directly from within the editor so you can signal you availability to your team, without the need to context switch. 
Live Share contacts have 4 statuses currently:

**1. Available:** Your default status  will be `Available` if you have the  Live Share extension and are actively using your editor, while not being in a session.

**2. Do not disturb:** Your status is set to `Do not disturb` if you are currently in an active Live Share session and all invitation notifications are suppressed.

**3. Away:** After 5 minutes of inactivity, your status will automatically switch to `Away`.

**4. Offline:** You will be offline once you are away for an extended period of time, or if you choose to [opt-out of sharing status](#managing-contacts-and-sharing-status)

## Managing contacts and sharing status

If you want to opt-out of this feature, you can do it in two ways.

1. You can disable the status setting by choosing to be `offline`. Once disabled, you'll still be able to see other's status and invite them, but your status won't be published, and others can't directly invite you.

   You can choose to be offline by clicking on the status circle which will bring up the following drop-down menu:

   ![dropdownstatus](../media/vscode-presence-opt-out.png)

   <em> Showing drop down of states of Presence</em>

2. You can open `user settings` and go to *Extensions > Visual Studio Live Share > Live Share: Presence* and disable the Presence service. Once disabled, you'll still be able to see other's status and invite them, but your status won't be published, and others can't directly invite you.

![presencesettings](../media/vscode-presence-setting.png)

## FAQ's

###### 1. Will I be automatically opting into sharing status when I use Live Share v1.0.950 and above?

The very first time you see contacts you will be notified with a toast and an option to opt out of it sharing your status. After that, you will be automatically share your status with your contacts, unless you choose to opt-out as shown above.

###### 2. Can I add my own contacts?

Currently, our contacts service auto-detects those collaborators who you frequently share code with or work along-side, and does not provide you with the option to add your own contacts. 

>Think being able to manually add contacts will be useful? Help us prioritize this by opening a GitHub feature request [here.](https://github.com/MicrosoftDocs/live-share/issues/new?template=feature_request.md)