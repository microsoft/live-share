# Getting Started

**Table of Contents**
- [Owners and participants](#owners-and-participants)
- [Downloading and installing](#downloading-and-installing)
- [Signing into Project Cascade from within your IDE/editor](#signing-into-project-cascade-from-within-your-ideeditor)
- [Starting a collaboration session](#starting-a-collaboration-session)
- [Joining a collaboration session](#joining-a-collaboration-session)
   - [Manually joining](#manually-joining)
- [What can I do with a collaboration session?](#what-can-i-do-with-a-collaboration-session)
- [Ending a collaboration session](#ending-a-collaboration-session)
- [Share states](#share-states)
- [More information](#more-information)
    - [Visual Studio features](collab-vs.md)
    - [Visual Studio Code features](collab-vscode.md)

## Owners and Participants
All collaboration activities in Project Cascade involve a single "owner" with one or more "participants."  The owner is the person that started the collaboration session and therefore not only owns the session but is the content being shared as well.  Participants then are anyone that joins an owner's collaboration session.

Owners can use all of their tools and services as they would normally but participants are only given access to the specific things the owner has shared with them. This includes code, running servers, debugging sessions and more.  Currently all content that is shared is kept on the owner's machine and not synchronized to the cloud or on the participant's machine which enables _instant access_ and _increased security_. 

The advantage is that the entire solution is available the moment a participant joins and the moment an owner ends a collaboration session, the content is no longer available to any participant. While content will not be available to participants if the owner's machine has offline/shut down during a session, the collaboration session will automatically start up again for participants when the owner's machine is back online and the tool is re-opened. 

## Downloading and installing

During the Project Cascade Private Preview both owners and participants will need to download a custom build of VS Code and an installer for Visual Studio. Project Cascade is ultimately intended to  be a pure extension, so this is not the long term delivery mechanism.

Requirements:
 - **Visual Studio 2017 Update 5** - Any edition of Visual Studio 2017 with update 5 installed (15.5) running on Windows 7, 8.1, or 10.
 - **VS Code** - Windows 7, 8.1, or 10 or macOS Sierra (10.12) only.  _El Capitan (10.11) and below are not currently supported due to [.NET Core 2.0 requirements](https://github.com/dotnet/core/blob/master/release-notes/2.0/2.0-supported-os.md)._

Download and setup instructions:

<table style="width: 100%; border-style: none;">
<tr>
    <td style="width: 128px; text-align: center; border:none;"><img src="media/vs-icon.png" /></td>
    <td>
        <strong>Visual Studio 2017 Update 5</strong><br />
       - Install VS 2017 Update 5 (15.5) on Windows (7, 8.1, or 10).<br/>
       - Install a supported workload: ASP.NET, .NET Core, and/or Node.js<br />
       - Download and run the Project Cascade installer. <br />
       - Start Visual Studio after install to complete setup.<br />
       <a href="http://aka.ms/project-cascade/dl/vs"><img style="padding: 0; spacing: 0;" src="media/download-for-win.png"></a><br />
    </td>
</tr>
<tr>
    <td style="width: 128px; text-align: center; border:none;"><img src="media/vscode-icon.png" /></td>
    <td>
        <strong>Visual Studio Code</strong><br />
        - Download the combined Code + Cascade zip for Windows (7, 8.1, or 10) or macOS (<strong>Sierra only</strong>).<br />
        - Unzip it where you want the install to live.<br/>
        - Start VS Code from there to complete setup.<br />
        - Optional: Install the <a href="https://marketplace.visualstudio.com/items?itemName=ms-vscode.csharp">C# extension</a> to enable .NET Core support. Node.js support is built in.<br />
        <a href="http://aka.ms/project-cascade/dl/vscode-win"><img src="media/download-for-win.png"></a>
        <a href="http://aka.ms/project-cascade/dl/vscode-mac"><img src="media/download-for-mac.png"></a><br />
    </td>
</tr>
</table>

By downloading and using Project Cascade, you agree to the [license terms](http://aka.ms/project-cascade/license) and [privacy statement](https://www.microsoft.com/en-us/privacystatement/EnterpriseDev/default.aspx).

> **Tip:** Be sure to start up VS or VS Code once with Project Cascade installed before attempting to join a collaboration session as this wires up the handler for the join web page.

## Signing into Project Cascade from within your IDE/editor

### Signing in from Visual Studio

By default Visual Studio uses the your [personalization account](https://docs.microsoft.com/en-us/visualstudio/ide/signing-in-to-visual-studio) so if you're already logged into Visual Studio, you may be able to skip this step. Otherwise sign as you would normally.

![VS sign in](media/vs-sign-in-button.png) 

However, if you are registered for the private preview (owners) and want to share you should sign in using the same credentials you used to register. 

**Visual Studio:** If you need to use a different sign-in than your VS personalization account (e.g. you registered for the private preview using a GitHub account), you can also go to **Tools &gt; Options &gt; Project Cascade** to switch credentials. You can also use different crednetials when sharing by right clicking on the "Share" button and selecting **Share As..**.

### Signing in from Visual Studio Code
For Visual Studio Code, simply click on the "Sign in" status bar item and follow the directions to sign in.  If you're enrolled in the private preview (owners), use the same credentials you used to register.

 ![VS Code Download](media/vscode-sign-in-button.png)

## Starting a collaboration session
After downloading and installing Project Cascade, follow these steps to start a collaboration session and invite a colleague to work with you.

1. **Register with the Project Cascade service**

    In order to start a collaboration session while Project Cascade is in private preview, you'll need to be registered for the Private Preview. Visual Studio users should use their [personalization account](https://docs.microsoft.com/en-us/visualstudio/ide/signing-in-to-visual-studio) credentials to register.

    > **Note:** _This step is only necessary in order to "share". Anyone can "join" a collaboration session as a participant. This makes it easy for folks to work together without everyone needing to explicitly register for the preview._

    If you have not done so, **[register now!](http://aka.ms/project-cascade)**

2. **Sign-in from within your IDE/editor**
    
    IF you have not already, sign into Project Cascade. See [signing into the Project Cascade from within your IDE/editor](#signing-into-project-cascade-from-within-your-ideeditor). Be sure to use the same sign in information you used to register.

3. **Start a collaboration session**
    
    Once you've been accepted into the preview, open a folder, project, or solution, and simply click the "Share" button or status bar icon within your tool and an invite link will be automatically copied to your clipboard. When opened in a browser, this link allow others to join a new collaboration session that shares contents of these folders with them. 

    ![VS Share Button](media/vs-share-button.png) ![VS Code Share Button](media/vscode-share-button.png)

    **Visual Studio:** If you need to use alternate credentials for this sharing session only, you can right click on the Share button and select "Share As..." instead.

	You will also see the "Share" button (VS) / status bar icons (VS Code) transition to convey a "Share State". See [share states](#share-states) for more information on what this looks like.

    Note that if you need to get the invite link again after you've started sharing, you can copy it to the clipboarda once again by doing the following:

	- **VS:** Click on the Share / Share State button and select "Copy Link"  
	- **VS Code**: Click the share state status bar icon and select "Start a Collaboration Session" again.

4. **Send someone the invite link**

    Send the link over e-mail, Slack, Skype, etc. and once someone joins you can begin immediately working with them! 

    > **Note:** The person you invite will be able to download, install needed tools, and join the collaboration session without having to register for the private preview.

5. **Share and collaborate**

    That's it!! Your colleague can now use this link to download Project Cascade if they have not already and join the collaboration session with you!

## Joining a collaboration session

After downloading and installing Project Cascade, follow these steps to join a collaboration session a collegue has sent you.

1. **Start a discussion with the owner**

    It's always good to start up a conversation via voice or chat in your favorite client before joining a collaboration session since you'll obviously need to communicate to collaborate.  In addition, as [outlined above](#owners-and-participants) the collaboration session requires the owner to be connected to the service to operate so you'll want to check in with them.

2. **Click on the invite link / open the invite in your browser**

    After installing Project Cascade for your tool, simply open (or re-open) the invite web page using the invite link your college sent you.  You should be notified that your browser wants to launching your Project Cascade enabled tool and if you accept it the tool will launch and automatically start the process of joining the collaboration session.

    > **Troubleshooting Tip:** Be sure you've **started the tool at least once** after installing Project Cascade before opening/re-opening the invite page. Still having trouble? See [manually joining](#manually-joining).

3. **Sign-in from within your IDE/editor**
    
    If you have not done so already, you will be prompted to sign into the Project Cascade service. See [signing into the Project Cascade from within your IDE/editor](#signing-into-project-cascade-from-within-your-ideeditor). You **do not need to be registered** for the private preview to participate in a collaboration session.

4. **Collaborate!**

   That's it!! In a few moments you'll be connected and you can start collaborating. You will see the "Share" button (VS) / status bar icons (VS Code) transition to convey a "Share State". See [share states](#share-states) for more information on what this looks like.

### Manually joining
You can also manually join from within VS or VS Code (rather than clicking on an invite link) which can be useful in situations where the tool you want to use is already running, you want to use a different tool than you usually do, or if you are having trouble with getting invite links to work for some reason. The process is easy:

1. **Sign-in from within your IDE/editor**
    
    See [signing into the Project Cascade from within your IDE/editor](#signing-into-project-cascade-from-within-your-ideeditor) if you have not already. You do not need to be part of the private preview to join a collaboration session.

2. **Manually enter the invite link**

    In **VS**, go to **File > Join Collaboration Session**.

    ![VS File > Join Collaboration Session](media/vs-join.png) <br />

    For **VS Code**, you can click on the sign in/share state status bar item after signing in and select "Join Collaboration Session".

    ![VS Code after sign in status bar item](media/vscode-after-signin-status-bar.png) <br />
    ![VS Code join collaboration session](media/vscode-join.png) <br />

    Paste in the invite URL you were sent and hit go.

3. **Collaborate!**

    That's it! You should be connected to the collaboration session momentarily.

## What can I do with a collaboration session?

Lots of things! Co-editing and co-debugging for example! Take a look at the article for the tool you're using to find out more! 

- [Visual Studio features](collab-vs.md)
- [Visual Studio Code features](collab-vscode.md)

## Ending a collaboration session

If the owner closes their tool, goes offline, or simply reboots, the collaboration session will be automatically restart when the owner opens the same folder, project, or solution that was shared. To stop sharing completely and end the collaboration session, you can use the share state button (in the upper right hand corner in VS or the status bar in VS Code) to stop sharing and end the collaboration session.

**In VS:**

![VS stop sharing](media/vs-stop-sharing.png) 

**VS Code:**

![VS Code share state item](media/vscode-share-state.png) <br />
![VS Code end collaboration session menu option](media/vscode-end-collaboration.png)

This will stop the collaboration session and any participants will be notified that they will no longer be able to access the content. Given nothing is persisted on disk, the participants do not need to preform any additional cleanup.

## Share states
The "Share" button in the upper right hand corner in VS and the Project Cascade status bar icons in Visual Studio Code alter their appearance to represent the current state of any active collaboration sessions you are involved with so you can understand at a glance whether your are sharing or recieving content from a collaborator.  The following are the states you will typically see.

| State | Visual Studio | Visual Studio Code | Description | 
|-------|---------------|--------------------|-------------|
| Inactive | | ![VS Code status: inactive](media/vscode-status-share.png) | No active collaboration session and nothing is shared. |
| Owner: Sharing Started | | ![VS Code status: starting](media/vscode-status-sharing.png)| A collaboration session is starting and sharing will begin shortly. |
| Owner: Sharing Active | | ![VS Code status: Active - Owner ](media/vscode-status-active.png)| Collaboration session active, content is shared. |
| Participant: Joining Session | | ![VS Code status: Joining](media/vscode-status-joining.png)| Joining an existing collaboration session. |
| Participant: Joined Session | | ![VS Code status: Active - Participant](media/vscode-status-active.png) | Joined and connected to an active collaboration session and recieving shared content. |
| Reconnecting | | ![VS Code status: reconnecting](media/vscode-status-reconnecting.png)| Connection to service or owner interrupted, but attempting to reconnect. |
| Disconnected | | ![VS Code status: disconnected](media/vscode-status-disconnected.png)| Connection to service or owner has been interrupted. Shared content is not available to participants. |
## More Information

- [Visual Studio features](collab-vs.md)
- [Visual Studio Code features](collab-vscode.md)
- [Roadmap](roadmap.md)
- [FAQ](faq.md)
