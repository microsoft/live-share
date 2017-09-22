# Visual Studio Code Extension Features & Limitations

This document provides information on the VS Code Project Cascade extension and the features it enables. See [getting started](getting-started.md) for information on sharing and joining collaboration sessions.

**Table of Contents**
- [Recap: Owners and participants](#recap-owners-and-participants)
- [Collaborative editing](#collaborative-editing)
- [Collaborative debugging](#collaborative-debugging)
- [Additional capabilities](#additional-capabilities)
- [Additional known participant limitations](#additional-known-participant-limitations)
- [More information](#more-information)
## Recap: Owners and participants
All collaboration activities in Project Cascade involve a single "owner" with one or more "participants."  The owner is the person that started the collaboration session and therefore not only owns the session but is the content being shared as well.  Participants then are anyone that joins an owner's collaboration session.

Owners can use all of their tools and services as they would normally but participants are only given access to the specific things the owner has shared with them. This includes code, running servers, debugging sessions and more.  Currently all content that is shared is kept on the owner's machine and not synchronized to the cloud or on the participant's machine which enables _instant access_ and _increased security_. 

The advantage is that the entire solution is available the moment a participant joins and the moment an owner ends a collaboration session, the content is no longer available to any participant. While content will not be available to participants if the owner's machine has offline/shut down during a session, the collaboration session will automatically start up again for participants when the owner's machine is back online and the tool is re-opened.  

See [getting started](getting-started.md) for information on starting and joining collaboration sessions.

## Collaborative editing

TODO: Note extensions that are required for features - e.g. C#

### Known co-editing participant limitations
While Project Cascade's approach provides instance access and better security, there are currently some shortcoming for participants during the co-editing experience. Owners do not have these limitations.

SUMMARY OF MAJOR LIMITATIONS

We want to hear from you! See [this query](https://github.com/Microsoft/project-cascade/issues?utf8=%E2%9C%93&q=is%3Aissue%20is%3Aopen%20label%3Afeature-request%20label%3A%22area%3A%20co-edit%22%20sort%3Areactions-%2B1%20) to find a complete list of logged limitations for co-editing. Up-vote (👍) those you want the most and feel free to raise new issues if there is another limitation not covered already!

## Collaborative debugging

TODO: Note extensions that are required for features - e.g. C#

### Known co-debugging participant limitations
While Project Cascade's approach provides instance access and better security, there are currently some shortcoming for participants during the co-debugging experience. Owners do not have these limitations.

SUMMARY OF MAJOR LIMITATIONS

We want to hear from you! See [this query](https://github.com/Microsoft/project-cascade/issues?utf8=%E2%9C%93&q=is%3Aissue%20is%3Aopen%20label%3Afeature-request%20label%3A%22area%3A%20co-debug%22%20sort%3Areactions-%2B1%20) to find a complete list of logged limitations for co-debugging. Up-vote (👍) those you want the most and feel free to raise new issues if there is another limitation not covered already!

## Additional capabilities

- Output logs
- Shared terminals
- Sharing a local server
- Download a copy

## Additional known participant limitations

In addition to the co-editing and co-debugging limitations listed above, there are a few others worth noting for participants. As above, owners do not have these limitations.

- Extensions
- Task Running
- Source Control
    - Diffing
    - Operations
- External Tools

We want to hear from you! See [this query for all open feature requests](https://github.com/Microsoft/project-cascade/issues?utf8=%E2%9C%93&q=is%3Aopen%20is%3Aissue%20label%3Afeature-request%20sort%3Areactions-%2B1%20). Up-vote (👍) those you want the most and feel free to raise new issues if there is another limitation not covered already!

## More information

- [Getting started](getting-started.md)
- [Visual Studio features](collab-vs.md)
- [Roadmap](roadmap.md)
- [FAQ](faq.md)
