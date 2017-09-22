# Visual Studio Extension Features & Limitations

This document provides information on the Visual Studio Project Cascade extension and its current limitations not already covered in the [getting started](getting-started.md) section.

**Table of Contents**
- Recap: Owners and participants
- Collaborative editing
- Collaborative debugging
- Additional capabilities
- Known participant limitations
- More information

## Recap: Owners and participants
All collaboration activities in Project Cascade involve a single "owner" with one or more "participants."  The owner is the person that started the collaboration session and therefore not only owns the session but is the content being shared as well.  Participants then are anyone that joins an owner's collaboration session.

Owners can use all of their tools and services as they would normally but participants are only given access to the specific things the owner has shared with them. This includes code, running servers, debugging sessions and more.  Currently all content that is shared is kept on the owner's machine and not synchronized to the cloud or on the participant's machine which enables _instant access_ and _increased security_. 

The advantage is that the entire solution is available the moment a participant joins and the moment an owner ends a collaboration session, the content is no longer available to any participant. While content will not be available to participants if the owner's machine has offline/shut down during a session, the collaboration session will automatically start up again for participants when the owner's machine is back online and the tool is re-opened.  

See [getting started](getting-started.md) for information on starting and joining collaboration sessions.

## Collaborative editing
Once a participant has joined a collaboration session all collaborators will immediately be able to see each others edits and highlights in real-time. Simply select a file from the Solution Explorer and start editing.

GIF GOES HERE

MORE WORDS

### Known co-editing participant limitations
While Project Cascade's approach provides instance access and better security, there are currently some shortcoming for participants during the co-editing experience. Owners do not have these limitations.

SUMMARY OF MAJOR LIMITATIONS

We want to hear from you! See [this query](https://github.com/Microsoft/project-cascade/issues?utf8=%E2%9C%93&q=is%3Aissue%20is%3Aopen%20label%3Afeature-request%20label%3A%22area%3A%20co-edit%22%20sort%3Areactions-%2B1%20) to find a complete list of logged limitations for co-editing. Up-vote (👍) those you want the most and feel free to raise new issues if there is another limitation not covered already!

## Collaborative Debugging

### Known co-debugging participant limitations
While Project Cascade's approach provides instance access and better security, there are currently some shortcoming for participants during the co-debugging experience. Owners do not have these limitations.

SUMMARY OF MAJOR LIMITATIONS

We want to hear from you! See [this query](https://github.com/Microsoft/project-cascade/issues?utf8=%E2%9C%93&q=is%3Aissue%20is%3Aopen%20label%3Afeature-request%20label%3A%22area%3A%20co-debug%22%20sort%3Areactions-%2B1%20) to find a complete list of logged limitations for co-debugging. Up-vote (👍) those you want the most and feel free to raise new issues if there is another limitation not covered already!

## Additional Capabilities

- Output logs
- Shared terminals
- Download a copy

## Additional Known Participant Limitations
In addition to the co-editing and co-debugging limitations listed above, there are a few others worth noting for participants. As above, owners do not have these limitations.

SUMMARY OF LIMITATIONS
- Explorers
    - Solution Explorer
    - Team Explorer
        - Diffing
        - Operations
    - Others
- Extensions
- External Tools

We want to hear from you! See [this query for all open feature requests](https://github.com/Microsoft/project-cascade/issues?utf8=%E2%9C%93&q=is%3Aopen%20is%3Aissue%20label%3Afeature-request%20sort%3Areactions-%2B1%20). Up-vote (👍) those you want the most and feel free to raise new issues if there is another limitation not covered already!

## More Information

- [Getting started](getting-started.md)
- [Visual Studio Code features](collab-vscode,md)
- [Roadmap](roadmap.md)
- [FAQ](faq.md)