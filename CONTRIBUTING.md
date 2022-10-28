<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Contributing

## TLDR

In short:

- **Known issues:** See [bugs](https://aka.ms/vsls-bugs) or [feature requests](https://aka.ms/vsls-feature-requests) and up-vote using a 👍 reaction.
- **VS Code bugs:** [Log a new issue](https://aka.ms/vsls-new-issue). Use the "Live Share: Export logs" command and [drag-and-drop the zip](https://help.github.com/articles/file-attachments-on-issues-and-pull-requests/) onto the bug or [email them](mailto:vsls-feedback@microsoft.com).
- **VS bugs:** [Help > Send Feedback > Report a Problem...](https://learn.microsoft.com/visualstudio/ide/how-to-report-a-problem-with-visual-studio-2017) Repro the problem before sending and logs will be auto-attached.
- **Feature requests:** [Log a new request](https://aka.ms/vsls-new-issue) or use a 👍 reaction to [up-vote an existing one](https://aka.ms/vsls-feature-requests).
- **Contact us:** [vsls-feedback@microsoft.com](mailto:vsls-feedback@microsoft.com), [#vsliveshare](https://aka.ms/vsls-twitter), or [Slack](https://aka.ms/vsls-slack).

More details below.

## Up-Vote an existing problem report or feature request

If you are wondering if someone has already encountered a problem or requested a feature, you can check out [open issues](https://github.com/Microsoft/live-share/issues). You can also use [this query](https://aka.ms/vsls-feature-requests) to specifically search for feature requests.

If you find your issue/feature already exists, feel free to make relevant comments and add your [reaction](https://github.com/blog/2119-add-reactions-to-pull-requests-issues-and-comments). Use a reaction in place of a "+1" comment.

👍 - upvote

👎 - downvote

## File a problem report

### Step 1 - [Optional] Check output logs

If you're seeing an error pop up that is not very descriptive, the output logs can help you understand if this is a known issue.  Simply go to the "Output" window and select the "Visual Studio Live Share" log stream.  Verbose logging is on by default.

### Step 2A - File a Visual Studio problem

Visual Studio has a built in feedback mechanism via the "Report a Problem..." tool that provides the engineering team detailed information about your installation that you should use to log bugs or problems you encounter when using VS.

Logs will be automatically attached.

![Image of Report a Problem...](docs/media/vs-feedback.png) 

> **Tip:** You may be able to save yourself some time by simply up-voting an existing problem report.  You may search for existing issue in the Visual Studio Feedback tool but be aware your problem may be related to multiple clients and therefore is logged in the GitHub [issue repository](https://github.com/Microsoft/live-share/issues).

Note that after your problem report is filed, it may be converted to a [GitHub issue](https://github.com/Microsoft/live-share/issues) for future tracking if it applies multiple clients or turns out to be a feature request. In this event, a link to the corresponding GitHub issue number will be referenced in comments on your raised problem report. 

Check out the tips in "[Writing Good Problem Reports and Feature Requests](#tip-writing-good-problem-reports-and-feature-requests)" for additional suggestions.

### Step 2B - File a VS Code or general service problems

1. **Export logs:** Press F1 (or Ctrl+Shift+P / Cmd+Shift+P), type "export logs" and run the "Live Share: Export Logs" command.

2. **Raise a new issue:** [Click here to draft a new issue](https://aka.ms/vsls-new-issue) and please add following information into the description:


    - **Tool:** VS, VS Code for Mac, VS Code for Windows
    - **OS and Version:** Windows 7/8/8.1/10, macOS Sierra/High Sierra
    - **Extension version:** Mention the version you installed with your VS/VSCode.
    - **Target Platform/Language:** Mention the language / project type you were using (e.g. ASP.NET Core, Node.js)
        - Be sure to specify whether you are using .NET Core or Full .NET for .NET related scenarios
    - **Repro steps:** Prefix the repro steps with [Host] or [Guest] to make it easy to repro the bug

3. **Attach logs:** Drag-and-drop the zipped logs from step 1 into the issue text and wait for it to upload.

4. **Click "Submit new issue"**

Check out the tips in "[Writing Good Problem Reports and Feature Requests](#tip-writing-good-problem-reports-and-feature-requests)" for additional suggestions.

## Filing Feature Requests

Many feature requests start out life as reported problems and should therefore follow the processes described above.  However, if you believe you have a feature request that is not a bug, you can follow these steps.

> Tip: You may be able to save yourself some time by using this [query](https://aka.ms/vsls-feature-requests) to see if your request already exists.  If you find it, 👍 (upvote) it.

Simply [click here to draft a new issue](https://aka.ms/vsls-new-issue) and  add as much of the following information into the description as is appropriate:

- **Tool:** VS, VS Code for Mac, VS Code for Windows
- **OS and Version:** Windows 7/8/8.1/10, macOS Sierra/High Sierra
- **Extension version:** Mention the version you installed with your VS/VSCode.
- **Project Type:** Mention the language / project type you were using (e.g. ASP.NET Core, Node.js)
  - Be sure to specify whether you are using .NET Core or Full .NET for .NET related scenarios

Be as specific as you can be with the problem or scenario you are trying to solve with the requested feature and let us know any painful workarounds you are having to do.

As with problem reports, don't feel bad if we ask for more information while we try to understand your scenario.

### Tip: Writing Good Problem Reports and Feature Requests

Here are a few tips that will help us understand your problem or feedback quickly.

> **Tip:** You may be able to save yourself some time by searching the [issue repository](https://github.com/Microsoft/live-share/issues) to see if the problem/request already exists so you can simply up-vote it.

First, try to file a single issue per problem or feature request.

* Do not enumerate multiple bugs or feature requests in the same issue.
* Do not add your issue as a comment to an existing issue unless it's for the identical input. Many issues look similar, but have different causes.

The more information you can provide, the more likely someone will be successful reproducing the issue and finding a fix. 

* Reproducible steps (1... 2... 3...) and what you expected versus what you actually saw. 
* Images, animations, or a link to a video.
* A code snippet that demonstrates the issue or a link to a code repository we can easily pull down onto our machine to recreate the issue. 

Don't feel bad if we can't reproduce the issue and ask for more information!

## Other ways to contact us!

- Shoot us a [mail](mailto:vsls-feedback@microsoft.com) with suggestions or questions
- Hit us up on Twitter using [#vsliveshare](https://twitter.com/search?f=tweets&q=%23vsliveshare&src=typd)!

## Contributing to documentation

You may contribute to documentation by submitting pull requests to this repository. Most contributions require you to agree to a Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

## Discussion Etiquette

In order to keep the conversation clear and transparent, please limit discussion to English and keep things on topic with the issue. Be considerate to others and try to be courteous and professional at all times. This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).

For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
