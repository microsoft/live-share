---
title: "Common Use Cases - Visual Studio Live Share | Microsoft Docs"
description: "An overview of the use cases that developers are commonly leveraging Visual Studio Live Share for."
ms.custom:
ms.date: 05/21/2018
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "liveshare"
ms.topic: "reference"
author: "lostintangent"
ms.author: "joncart"
manager: "AmandaSilver"
ms.workload: 
  - "liveshare"
---

<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Common Use Cases

The primary goal of Visual Studio Live Share is to enable developers to collaborate with each other more easily, without introducing any opinion about when and how to do it (e.g. which communication tool to use, the "right" software methodology or SCM workflow). This way, your tools can support interactions that occur **naturally**, and as **frequently** as needed, but in a way that **compliments** how you already prefer to work.

This document highlights some use cases that Visual Studio Live Share is already being used for, and describes how well we currently support them, and ways we plan to optimize them further  (based on feedback!). If you're using Live Share for something that isn't already covered below, or you think we can do better to support a specific use case, please [let us know](https://github.com/MicrosoftDocs/live-share/issues/new).

* [Quick Assistance](#quick-assistance)
    * [Office Hours](#office-hours)
* [Pair Programming](#pair-programming)
    * [Mob Programming](#mob-programming)
    * [Coding Competitions / Hack-A-Thons](#coding-competitions--hack-a-thons)
    * [School Group Projects](#school-group-projects)
    * [Developer Streaming](#developer-streaming)
    * [Prototyping / Project Inception](#prototyping--project-inception)
* [Interactive Education](#interactive-education)
    * [Peer Mentoring / Onboarding](#peer-mentoring--onboarding)
    * [Team Brown Bags](#team-brown-bags)
    * [Classroom Lectures](#classroom-lectures)
* [Code Reviews](#code-reviews)
* [Technical Interviews](#technical-interviews)

## Quick assistance

When you run into an issue (e.g. trying to resolve a bug, setting up your environment), you can use Visual Studio Live Share to instantly seek assistance from another peer. In many cases, it isn't immediately clear what context the person providing help will need, and therefore, Live Share helps by making it simple to provide access to your entire project, and if/as needed, incrementally share more (e.g. a local server, read-only terminal). No need to send code snippets and/or error messages back-and-forth!

Additionally, since Live Share allows you to share your active debug session, without requiring "guests" to install any of the necessary platforms SDKs (e.g. Node.js, Go, .NET Core) or tooling extensions, it can help you get resolution faster, and prevent "doesn't repro on my machine" situations. Live Share allows you to share debug state with others, for any programming language or runtime environment (e.g. Kubernetes, React Native app) and so regardless what you need help with, you can share it!

### Office Hours

Many businesses and educational institutions (e.g. schools, online training courses) provide support to their customers/employees/students at pre-determined times, and generally on a recurring frequency (e.g. every Friday from 3-5 PM). In this way, "office hours" are simply a scheduled form of "quick assistance", as opposed to being entirely ad-hoc. Live Share makes it easy to get help quickly, since the "expert" providing help can immediately join a collaboration session, and answer your question(s), without needing to setup their machine at all.

## Pair Programming

One of the most commonly used scenarios for Visual Studio Live Share is "pair programming": two or more developers, working together on a shared task, with the goal of sharing knowledge, increasing team cohesion, and potentially, product quality. The exact look-and-feel of pair programming can differ significantly between teams and situations, depending on the following (among others):

1. The scope of the "task" being collaborated on (e.g. a bug, a user story)

1. The expected duration of the collaboration session (e.g. two minutes, an hour, full-time, once a week, TBD)

1. The number of people involved (e.g. two, the entire team)

1. The role of each participant (e.g. "driver", observer/reviewer, subject matter expert)

1. The proximity of participants (e.g. co-located in the same building, across the world)

Live Share was designed to be agnostic to all of the aforementioned concerns, and instead, strives to support pair programming that is completely "opportunistic" and catered to your situation. That said, unlike two developers sharing a single keyboard and screen, Live Share enables a form of pair programming that allows developers to work on a shared goal, without removing their individual autonomy or environment preferences. You can work independently, or together, allowing each participant to bring their own thought process to the collaboration.

To further support pair programming, and allow each "guest" to perform commonly-required actions, we have work on our roadmap to continue increasing the context and capabilities that are shared in a Live Share session: tasks ([#40](https://github.com/MicrosoftDocs/live-share/issues/40)), build output ([#48](https://github.com/MicrosoftDocs/live-share/issues/48)), guest-driven debugging ([#32](https://github.com/MicrosoftDocs/live-share/issues/32)), and more. Let us know which of these experiences are important to you!

To break this use case down even further, the following items represent forms of pair programming that we've observed folks using Live Share for:

### Mob Programming

[Mob programming](https://en.wikipedia.org/wiki/Mob_programming) (or swarm programming) is essentially pair programming, but with more than two people. Therefore, all of the benefits of Live Share for pair programming apply equally as well. Additionally, some teams do "swarming" on an as-needed basis (e.g. the team rallying around a firedrill) as opposed to full-time.

Currently, Live Share supports up to five guests within a session, which may or may not accommodate your team size. However, this is something we plan to increase (for various use cases), and are looking for feedback on ([Vote 👍 Here](https://github.com/MicrosoftDocs/live-share/issues/229))

### Coding Competitions / Hack-A-Thons

Coding competitions and hack-a-thons are effectively short-term, single-task variations of mob programming. The members of the team, and their current role, are also potentially dynamic. Since this use case is typically also time-sensitive, the ability to collaborate in real-time without needing to adopt an entirely new tool, and the ability to work together, without being restricted to a single screen or keyboard, can go a log way in increasing velocity.

Since the participants in this environment might not always be fully "trusted", we've heard requests to allow removing (and blocking) a guest from a session at any time, which is something that we plan on enabling ([#398](https://github.com/MicrosoftDocs/live-share/issues/398)), and supports the goal of providing "hosts" with complete control over their environment.

### School Group Projects

Group projects ends up looking a lot like mob programming, where multiple students are working together, and can transition seamlessly between focusing on a single task, or working on separate tasks concurrently. Instead of simply relying on version control to collaborate asynchronously, they can use Live Share to work together in real-time, which can help the social and educational benefits of working in a group.

### Developer Streaming

Developer streaming (via Twitch or Mixer) has become a compelling new form of education. While Live Share isn't meant to replace their broadcasting platforms (though we've heard the request!), it does provide a means for the host to pair program with one or more guests, and then stream that interaction. This way, viewers can potentially learn more by seeing the natural interaction and thought process of two or more developers, who could even be working together in entirely separate operating systems and IDEs!

### Prototyping / Project Inception

When a team is starting a new project/microservice, or prototyping/spiking a new feature, it can often be helpful to collaborate together in order to make rapid progress and explore new ideas. Since the newly forming codebase might not be committed to a shared repository yet, Live Share allows everyone to participate in the iterative process, regardless if they're in the same office or not.

## Interactive Education

Generally speaking, Live Share seeks to assist developers in sharing knowledge amongst their team. Education is a fundamental use case for Live Share, and it supports this particularly well by allowing each participant to interact with the codebase being collaborated on, as opposed to simply watching a screen. Everyone learns in subtlety different ways, and therefore, by providing independence to a "student", they are able to take advantage of the instruction being given, without needing to sacrifice their ability to explore their own ideas along the way.

### Peer Mentoring / Onboarding

When introducing a developer to a new codebase, feature area, technology, etc. you can use Live Share to walk them through the project (using `Follow Mode`), such that they can follow along with you, but from within their own personal IDE. Since Live Share allows "guests" to independently navigate the project (e.g. opening a file, performing a `Peek Definition`), they can follow allow, but also, perform quick explorations as needed (e.g. "Hmm, what does this function do?").

### Team Brown Bags

Team brown bags are effectively like peer mentoring, but presented to an entire team, and potentially, more focused on socializing generally useful knowledge, as opposed to on-boarding support and/or helping with a specific task.

### Classroom Lectures

When instructors are teaching a lesson, they can use Live Share to share their project with students, instead of simply presenting their screen. This allows the entire class to follow along with the teacher, while being able to interact with the project on their own. Additionally, the teacher can ask individual students to assist in solving a particular portion of the lesson (e.g. "Which method should we call here?"), which can help in the social aspects of the class, without requiring students to walk up to the front of the room, or even be physically present in the same room (e.g. online courses).

To fully optimize Live Share for this scenario, we need to support read-only access ([#55](https://github.com/MicrosoftDocs/live-share/issues/55)), increase the current guest limit ([#229](https://github.com/MicrosoftDocs/live-share/issues/229)), and simplify the way that sessions are initiated ([#422](https://github.com/MicrosoftDocs/live-share/issues/422)).

## Code Reviews

PRs are a powerful way to collaborate with others, but typically represent the completion of a task (excluding "WIP" PRs), and the desire to merged it in. Many times, the feedback that is given in a PR could  easily have been given earlier, and therefore, there's potentially value for teams to easily and continuously seek advice from their peers, as opposed to waiting until they "complete" a task to ask.

Since Live Share allows you to instantly share your project with others, it can be used to enable "informal"/ad-hoc code reviews, where instead of asking for help, you're simply seeking input to ensure your direction and/or approach aligns with others. This can potentially help subsequent PRs complete quicker, and definitely helps socialize knowledge across the team.

Additionally, since Live Share allows you to share an arbitrary directory, you can use it to perform code reviews, even if you're not currently using version control (though you should!), or if your team doesn't use PRs (E.g. you do trunk-based development).

Live Share doesn't currently share source control diffs, which is a critical piece of context when using it for code reviews. This is on our roadmap, and any feedback on priority is greatly appreciated ([Vote 👍 Here](https://github.com/MicrosoftDocs/live-share/issues/36)).

## Technical Interviews

When interviewing candidates for a developer position, it can often be helpful to go beyond whiteboard discussions, and instead, observe them solving a coding problem from within an actual IDE (especially if your team/organization has "standardized" on a tool that you'd like to see them use). This not only gives them the benefit of working in a way that is potentially more natural/comfortable (most developers don't code on whiteboards!), but also, gives them immediate feedback/assistance while working (e.g. build errors, intellisense). Many times, it's more important to understand a candidate's thought process, as opposed to their ability to memorize exact syntax and/or API names. In this way, Live Share provides an experience that is similar to doing a pair programming session, but allows the participant to be in their own environment (including OS settings, such as accessibility), and would work equally as well for local or remote interviews.

Additionally, real-world development is more than simply writing code. Because Live Share also supports shared debugging, tasks and terminals, it allows interviewers to observe candidates while diagnosing an issue, and provide them the appropriate tools needed to solve it (e.g. step debug, run tests). Since all context is remoted from the host's machine, candidates can quickly jump into the "interview environment" without needing to setup their machine (beyond installing Live Share). Teams could then maintain a repository of shared interviewing apps (or use their actual product codebase), that could be cloned and shared with candidates, by simply sending them the session URL before each interview.

## See also

* [Language and platform support](platform-support.md)
* [Connectivity requirements for Live Share](connectivity.md)
* [Security features of Live Share](security.md)
* [All major bugs, feature requests, and limitations](https://aka.ms/vsls-issues)
* [All feature requests and limitations](https://aka.ms/vsls-feature-requests)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).
