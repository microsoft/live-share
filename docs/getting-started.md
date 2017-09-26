# Getting Started

**Table of Contents**
- [Owners and participants](#owners-and-participants)
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

## Starting a collaboration session

## Joining a collaboration session

### Manually joining
You can also join from within VS or VS Code rather than clicking on the link which can be useful if the tool is already open or If joining via links is not working for some reason. The process is easy:

1. **Sign In**
    
    For Visual Studio, you may already be signed in with a personalization account. If so, you can skip this step. If not click "Sign in" in in the upper right.

    ![VS Download](media/vs-sign-in-button.png) 

    > **Tip:** Need to use a different sign-in for Visual Studio than your personalization account? Go to Tools &gt; Options &gt; Project Cascade.
    
    You can sign in using Visual Studio code by clicking "Sign in" in the status bar.

    ![VS Code Download](media/vscode-sign-in-button.png)

    As above, the sign in credeintals used do not need to be registered for the private preview to join a collaboration session.

2. **Manually enter the invite link**

    In VS, go to File > Join Collaboration Session.

    For VS Code, you can click on the sign in status bar icon and click "Join Collaboration Session".

    Paste in the invite URL you were sent and hit go.

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
