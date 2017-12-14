# Getting Started

**Table of Contents**
- [Owners and participants](#owners-and-participants)
- [Downloading and installing](#downloading-and-installing)
- [Signing into Visual Studio Live Share from within your IDE/editor](#signing-into-visual-studio-live-share-from-within-your-ideeditor)
- [Starting a collaboration session](#starting-a-collaboration-session-and-sharing)
- [Joining a collaboration session](#joining-a-collaboration-session)
   - [Manually joining](#manually-joining)
- [What can I do with a collaboration session?](#what-can-i-do-with-a-collaboration-session)
- [Ending a collaboration session](#ending-a-collaboration-session)
- [Session states](#session-states)
- [More information](#more-information)
    - [Visual Studio features](collab-vs.md)
    - [Visual Studio Code features](collab-vscode.md)

## Owners and Participants
All collaboration activities in Visual Studio Live Share involve a single "owner" with one or more "participants."  The owner is the person that started the collaboration session and therefore not only owns the session but is the content being shared as well.  Participants then are anyone that joins an owner's collaboration session.

Owners can use all of their tools and services as they would normally but participants are only given access to the specific things the owner has shared with them. This includes code, running servers, debugging sessions and more.  Currently all content that is shared is kept on the owner's machine and not synchronized to the cloud or on the participant's machine which enables _instant access_ and _increased security_. 

The advantage is that the entire solution is available the moment a participant joins and the moment an owner ends a collaboration session, the content is no longer available to any participant and temp files are automatically cleaned up. While content will not be available to participants if the owner's machine has offline/shut down during a session, sharing again reuses the same session ID to make joining again easy. 

## Downloading and installing

During the Visual Studio Live Share private limited preview both owners and participants will need to download a custom build of VS Code and/or an installer for Visual Studio. Visual Studio Live Share is ultimately intended to be a pure extension, so this is not the long term delivery mechanism.

Requirements:
 - **Visual Studio 2017 Update 6** - Any edition of Visual Studio 2017 with update 6 installed (15.6) running on Windows 7, 8.1, or 10.
 - **Visual Studio Code Insiders** - Windows 7, 8.1, or 10 or macOS Sierra (10.12) only.  _El Capitan (10.11) and below are not currently supported due to [.NET Core 2.0 requirements](https://github.com/dotnet/core/blob/master/release-notes/2.0/2.0-supported-os.md)._

Download and setup instructions:

<table style="width: 100%; border-style: none;">
<tr>
    <td style="width: 128px; text-align: center; border:none;"><img src="media/vs-icon.png" /></td>
    <td>
        <strong>Visual Studio 2017 Update 6</strong><br />
       1. Install VS 2017 Update 6 (15.6) on Windows (7, 8.1, or 10).<br/>
       2. Install a supported workload: ASP.NET, .NET Core, and/or Node.js<br />
       3. Download the Visual Studio Live Share VSIX and double click to install. <br />
       <a href="http://aka.ms/vsls-dl/vs"><img style="padding: 0; spacing: 0;" src="media/download.png"></a><br />
    </td>
</tr>
<tr>
    <td style="width: 128px; text-align: center; border:none;"><img src="media/vscode-icon.png" /></td>
    <td>
        <strong>Visual Studio Code Insiders</strong><br />
        1. Install <a href="https://code.visualstudio.com/insiders/">Visual Studio Code Insiders</a> for Windows (7, 8.1, or 10) or macOS <b>(Sierra and up only).</b><br />
        &nbsp;&nbsp;&nbsp;&nbsp;macOS users should also be sure to place VS Code in the Applications folder.<br />
        2. Download the Visual Studio Live Share extension for Visual Studio Code.<br />
        3. Start VS Code Insiders, press F1, select "Extensions: Install from VSIX...", select the extension. <br />
        4. Wait for the install to complete and reload.<br />
        <a href="http://aka.ms/vsls-dl/vscode"><img src="media/download.png"></a>
    </td>
</tr>
</table>

By downloading and using Visual Studio Live Share, you agree to the [license terms](http://aka.ms/vsls-license) and [privacy statement](https://www.microsoft.com/en-us/privacystatement/EnterpriseDev/default.aspx).

<!--
> **Tip:** Be sure to start up VS or VS Code once with Visual Studio Live Share installed before attempting to join a collaboration session as this wires up the handler for the join web page.
-->

## Signing into Visual Studio Live Share from within your IDE/editor

### Signing in from Visual Studio

By default Visual Studio uses the your [personalization account](https://docs.microsoft.com/en-us/visualstudio/ide/signing-in-to-visual-studio) so if you're already logged into Visual Studio, you may be able to skip this step. Otherwise sign as you would normally.

![VS sign in](media/vs-sign-in-button.png) 

However, if you've been accepted into for the private limited preview (owners) and want to share you should sign in using the same credentials you used to sign up. 

**Note:** If you need to use a different sign-in than your VS personalization account (e.g. you signed up for the private limited preview using a GitHub account), go to **Tools &gt; Options &gt; Live Share** to switch credentials. 

### Signing in from Visual Studio Code
For Visual Studio Code, simply click on the "Sign in" status bar item and follow the directions to sign in.  If you're been accepted into the private limited preview (owners), use the same credentials you used to sign up.

 ![VS Code Download](media/vscode-sign-in-button.png)

## Starting a collaboration session and sharing
After downloading and installing Visual Studio Live Share, follow these steps to start a collaboration session and invite a colleague to work with you.

1. **Sign up for the Visual Studio Live Share preview**

    In order to start a collaboration session while Visual Studio Live Share is in private limited preview, you'll need to be signed up and accepted into the preview to be able to share. Visual Studio users should use their [personalization account](https://docs.microsoft.com/en-us/visualstudio/ide/signing-in-to-visual-studio) credentials to sign up.

    > **Note:** _This step is only necessary in order to "share". Anyone can "join" a collaboration session as a participant. This makes it easy for folks to work together without everyone needing to explicitly sign up or be accepted into the preview._

    If you have not done so, **[sign up now!](http://aka.ms/vsls-signup)** 

2. **Sign in from within your IDE/editor**
    
    If you have not already, sign into Visual Studio Live Share. See [signing into the Visual Studio Live Share from within your IDE/editor](#signing-into-visual-studio-live-share-from-within-your-ideeditor). Be sure to use the same sign in information you used to sign up.

3. **Start a collaboration session**
    
    Once you've been accepted into the preview, open a folder, project, or solution, and simply click the "Share" button or status bar icon within your tool and an invite link will be automatically copied to your clipboard. When opened in a browser, this link allow others to join a new collaboration session that shares contents of these folders with them. 

    ![VS Share Button](media/vs-share-button.png) ![VS Code Share Button](media/vscode-share-button.png)

	You will also see the "Share" button (VS) / status bar icons (VS Code) transition to convey a "Session State". See [session states](#session-states) for more information on what this looks like.

    Note that if you need to get the invite link again after you've started sharing, you can copy it to the clipboard once again by doing the following:

	- **VS:** Click on the Share / Session State button and select "Copy Link"  
	- **VS Code**: Click the session state status bar icon and select "Invite Others (Copy Link)".

4. **Send someone the invite link**

    Send the link over e-mail, Slack, Skype, etc. and once someone joins you can begin immediately working with them! 

    > **Note:** The person you invite will be able to download, install needed tools, and join the collaboration session without having to sign up or be accepted into the private limited preview.

5. **Share and collaborate**

    That's it!! Your colleague can now use this link to download Visual Studio Live Share if they have not already and join the collaboration session with you!

## Joining a collaboration session

After downloading and installing Visual Studio Live Share, follow these steps to join a collaboration session a collegue has sent you.

1. **Start a discussion with the owner**

    It's always good to start up a conversation via voice or chat in your favorite client before joining a collaboration session since you'll obviously need to communicate to collaborate.  In addition, as [outlined above](#owners-and-participants) the collaboration session requires the owner to be connected to the service to operate so you'll want to check in with them.

2. **Click on the invite link / open the invite in your browser**

    After installing Visual Studio Live Share for your tool, simply open (or re-open) the invite web page using the invite link your college sent you.  You should be notified that your browser wants to launching your Visual Studio Live Share enabled tool and if you accept it the tool will launch and automatically start the process of joining the collaboration session.

    > **Troubleshooting Tip:** When using VS Code, be sure you've **started the tool at least once** after installing Visual Studio Live Share before opening/re-opening the invite page. Still having trouble? See [manually joining](#manually-joining).

3. **Sign in from within your IDE/editor**
    
    If you have not done so already, you will be prompted to sign into Visual Studio Live Share. See [signing into the Visual Studio Live Share from within your IDE/editor](#signing-into-visual-studio-live-share-from-within-your-ideeditor). You **do not need to be signed up or accepted into the private limited preview** to participate in a collaboration session.

4. **Collaborate!**

   That's it!! In a few moments you'll be connected and you can start collaborating. You will see the "Share" button (VS) / status bar icons (VS Code) transition to convey a "Session State". See [session states](#session-states) for more information on what this looks like.

### Manually joining
You can also manually join from within VS or VS Code (rather than clicking on an invite link) which can be useful in situations where the tool you want to use is already running, you want to use a different tool than you usually do, or if you are having trouble with getting invite links to work for some reason. The process is easy:

1. **Sign in from within your IDE/editor**
    
    See [signing into the Visual Studio Live Share from within your IDE/editor](#signing-into-visual-studio-live-share-from-within-your-ideeditor) if you have not already. You do not need to be part of the private limited preview to join a collaboration session.

2. **Manually enter the invite link**

    In **VS**, go to **File > Join Collaboration Session**.

    ![VS File Join Collaboration Session](media/vs-join.png)<br />

    For **VS Code**, you can click on the sign in/session state status bar item after signing in and select "Join Collaboration Session".

    ![VS Code after sign in status bar item](media/vscode-after-signin-status-bar.png) <br />
    ![VS Code join collaboration session](media/vscode-join.png) <br />

    Paste in the invite URL you were sent and confirm.

3. **Collaborate!**

    That's it! You should be connected to the collaboration session momentarily.

## What can I do with a collaboration session?

Lots of things! Co-editing and co-debugging for example! Take a look at the article for the tool you're using to find out more! 

- [Visual Studio features](collab-vs.md)
- [Visual Studio Code features](collab-vscode.md)

## Ending or leaving a collaboration session

To stop sharing completely and end the collaboration session, you can use the session state button (in the upper right hand corner in VS or the status bar in VS Code) to stop sharing and end the collaboration session. All participants will be notified that the session has ended.

**In VS:**

![VS end collaboration session](media/vs-stop-sharing.png) 

**VS Code:**

![VS Code session state item](media/vscode-share-state.png) <br />
![VS Code end collaboration session menu option](media/vscode-end-collaboration.png)

This will stop the collaboration session and any participants will be notified that they will no longer be able to access the content. Given nothing is persisted on disk, the participants do not need to preform any additional cleanup.

Similarly, individual participants can also leave the collaboration session by closing the tool or selecting "Leave Collaboration Session".

**In VS:**

![VS leave collaboration session](media/vs-leave-session.png) 

**In VS Code:**

![VS Code session state item](media/vscode-share-state.png) <br />
![VS Code leave collaboration session](media/vscode-leave-session.png) 

## Session states
After you have started or joined collaboration session and have access to shared content, the "Share" button in the upper right hand corner in VS and the Visual Studio Live Share status bar icons in Visual Studio Code update their appearance to reflect the state of the active collaboration session. 

The following are the states you will typically see:

| State | Visual Studio | Visual Studio Code | Description | 
|-------|---------------|--------------------|-------------|
| Inactive | | ![VS Code status: inactive](media/vscode-status-share.png) | No active collaboration session and nothing is shared. |
| Owner: Sharing In-Progress | | ![VS Code status: starting](media/vscode-status-sharing.png)| A collaboration session is starting and content sharing will begin shortly. |
| Owner: Sharing | | ![VS Code status: sharing active ](media/vscode-status-active.png)| A collaboration session is active and content is shared. |
| Participant: Joining Session | | ![VS Code status: joining](media/vscode-status-joining.png)| Joining an existing collaboration session. |
| Participant: Joined | | ![VS Code status: joined](media/vscode-status-active.png) | Joined and connected to an active collaboration session and recieving shared content. |

## More Information

- [Visual Studio features](collab-vs.md)
- [Visual Studio Code features](collab-vscode.md)
- [FAQ](https://aka.ms/vsls-faq)
