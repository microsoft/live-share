# Getting Started

**Table of Contents**
- [Owners and participants](#owners-and-participants)
- [Downloading and installing](#downloading-and-installing)
- [Signing into Project Cascade from within your IDE/editor](#signing-into-project-cascade-from-within-your-ide-editor)
- [Starting a collaboration session](#starting-a-collaboration-session)
- [Joining a collaboration session](#joining-a-collaboration-session)
   - [Manually joining](#manually-joining)
- [What can I do with a collaboration session?](#what-can-i-do-with-a-collaboration-session)
- [Ending a collaboration session](#ending-a-collaboration-session)
- [More information](#more-information)

## Owners and Participants
All collaboration activities in Project Cascade involve a single "owner" with one or more "participants."  The owner is the person that started the collaboration session and therefore not only owns the session but is the content being shared as well.  Participants then are anyone that joins an owner's collaboration session.

Owners can use all of their tools and services as they would normally but participants are only given access to the specific things the owner has shared with them. This includes code, running servers, debugging sessions and more.  Currently all content that is shared is kept on the owner's machine and not synchronized to the cloud or on the participant's machine which enables _instant access_ and _increased security_. 

The advantage is that the entire solution is available the moment a participant joins and the moment an owner ends a collaboration session, the content is no longer available to any participant. While content will not be available to participants if the owner's machine has offline/shut down during a session, the collaboration session will automatically start up again for participants when the owner's machine is back online and the tool is re-opened. 

## Downloading and installing

During the Project Cascade Private Preview both owners and participants will need to download a custom build of VS Code and an installer for Visual Studio. Project Cascade is ultimately intended to  be a pure extension, so this is not the long term delivery mechanism.

Requirements:
 - **Visual Studio 2017 Update 5** - Any edition of Visual Studio 2017 with update 5 installed (15.5) running on Windows 7, 8.1, or 10.
 - **VS Code** - Windows 7, 8.1, or 10 or macOS Sierra (10.12) only.  _El Capitan (10.11) and below are not currently supported due to [.NET Core 2.0 requirements](https://github.com/dotnet/core/blob/master/roadmap.md#supported-os-versions)._

Download and setup instructions:

<table style="width: 100%; border-style: none;">
<tr>
    <td style="width: 128px; text-align: center; border:none;"><img src="media/vs-icon.png" /></td>
    <td>
        <strong>Visual Studio 2017 Update 5</strong><br />
       - Install VS 2017 Update 5 (15.5) on Windows (7, 8.1, or 10)<br/>
       - Download and run the Project Cascade installer.<br />
       - Start Visual Studio after install to complete setup.<br />
       <a href="http://aka.ms/project-cascade"><img style="padding: 0; spacing: 0;" src="media/download-for-win.png"></a><br />
    </td>
</tr>
<tr>
    <td style="width: 128px; text-align: center; border:none;"><img src="media/vscode-icon.png" /></td>
    <td>
        <strong>Visual Studio Code</strong><br />
        - Download the combined Code + Cascade zip for Windows (7, 8.1, or 10) or Mac (<strong>macOS Sierra only</strong>).<br />
        - Unzip it where you want the install to live.<br/>
        - Start VS Code from there to complete setup.<br />
        <a href="http://aka.ms/project-cascade"><img src="media/download-for-win.png"></a>
        <a href="http://aka.ms/project-cascade"><img src="media/download-for-mac.png"></a><br />
    </td>
</tr>
</table>

> **Tip:** Be sure to start up VS or VS Code once with Project Cascade installed before attempting to join a collaboration session as this wires up the handler for the join web page.

Don't see your favorite IDE/editor? [Up-vote your favorite tool!](https://github.com/Microsoft/project-cascade/issues/24) We plan to add support for additional tools based on community feedback.

## Signing into Project Cascade from within your IDE/editor

Signing into the Project Cascade service is simple. 

### Signing into Visual Studio

By default Visual Studio uses the your personalization account so if you're already logged in with the same account you can skip this step. Otherwise sign as you would normally.

![VS sign in](media/vs-sign-in-button.png) 

If you are registered for the private preview (owners) you should sign in using the same credentials you used to register. If you need to use a different sign-in for Visual Studio than your personalization account (e.g. you registered for the private preview using a GitHub account) you can go to **Tools &gt; Options &gt; Project Cascade** and sign in that way instead.

### Signing into Visual Studio Code
For Visual Studio Code, simply click on the "Sign in" status bar item and follow the directions to sign in.  If you're enrolled in the private preview (owners), use the same credentials you used to register.

 ![VS Code Download](media/vscode-sign-in-button.png)

## Starting a collaboration session
After downloading and installing Project Cascade, follow these steps to start a collaboration session and invite a colleague to work with you.

1. **Register with the Project Cascade service**

    In order to start a collaboration session while Project Cascade is in private preview, you'll need to be registered for the Private Preview. Visual Studio users should use their personalization account credentials to register.

    > **Note:** _This step is only necessary in order to "share". Anyone can "join" a collaboration session as a participant. This makes it easy for folks to work together without everyone needing to explicitly register for the preview._

    If you have not done so, **[register now!](http://aka.ms/project-cascade)**

2. **Sign-in from within your IDE/editor**
    
    IF you have not already, sign into Project Cascade. See [signing into the Project Cascade from within your IDE/editor](#signing-into-project-cascade-from-within-your-ide-editor). Be sure to use the same sign in information you used to register.

3. **Start a collaboration session**

    Once you've been accepted into the preview, you can simply click "Share" within your tool and you'll get a link that allows others to join your collaboration session. 

    ![VS Share Button](media/vs-share-button.png) ![VS Code Share Button](media/vscode-share-button.png)

    After the session has started, you can get this same link again by clicking on the share status button (VS) / status bar item (VS Code) and selecting "Copy Link".

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

    > **Troubleshooting Tip:** Be sure you've **started the tool at least once** after installing Project Cascade before opening/re-opening the invite page. Still having trouble? See [manually joining](#manually-joining) in our docs.

3. **Sign-in from within your IDE/editor**
    
    If you have not done so already, you will be prompted to sign into the Project Cascade service. See [signing into the Project Cascade from within your IDE/editor](#signing-into-project-cascade-from-within-your-ide-editor). You **do not need to be registered** for the private preview to participate in a collaboration session.

    Any use of your sign in information complies with [Microsoft's privacy statement]().

4. **Collaborate!**

   That's it!! In a few moments you'll be connected and you can start collaborating.

### Manually joining
You can also join from within VS or VS Code rather than clicking on the link which can be useful if the tool is already open or if joining via links is not working for some reason. The process is easy:

1. **Sign-in from within your IDE/editor**
    
    See [signing into the Project Cascade from within your IDE/editor](#signing-into-project-cascade-from-within-your-ide-editor) if you have not already. You do not need to be part of the private preview to join a collaboration session.

2. **Manually enter the invite link**

    In VS, go to File > Join Collaboration Session.

    For VS Code, you can click on the sign in status bar icon and click "Join Collaboration Session".

    Paste in the invite URL you were sent and hit go.

3. **Collaborate!**

    That's it! You should be connected to the collaboration session momentarily.

## What can I do with a collaboration session?

Lots of things! Co-editing and co-debugging for example! Take a look at the article for the tool you're using to find out more! 

- [Visual Studio features](collab-vs.md)
- [Visual Studio Code features](collab-vscode.md)

## Ending a collaboration session

## More Information

- [Visual Studio features](collab-vs.md)
- [Visual Studio Code features](collab-vscode.md)
- [Roadmap](roadmap.md)
- [FAQ](faq.md)
