---
title: "Notebooks -  Visual Studio Live Share | Microsoft Docs"
description: "Detailed information on using Live Share for notebook collaboration"
ms.date: 01/26/2021
ms.reviewer: ""
ms.suite: ""
ms.topic: "reference"
author: "lostintangent"
ms.author: "joncart"
manager: "simoncal"
ms.workload: 
  - "liveshare"
---

# 📓 Notebooks

Notebooks have become a key part of many developer's and data scientist's workflow. With Visual Studio Code offering a rich, native notebook-editor, we're excited to enable a real-time collaboration experience, that will allow teams and classrooms to use notebooks and Live Share together. This Live Share notebook experience is currently in preview, and therefore, has some [pre-requisitions](#pre-requisites) and [known issues](#known-issues) to be aaware of. We'll be iterating rapidly on this initial preview release, and therefore, please don't hesitate to [send us any questions/feedback](http://github.com/microsoftdocs/live-share)) as you're evaluating it 👍<br />

<img width="800px" src="https://user-images.githubusercontent.com/116461/105928037-0d07a680-5ffa-11eb-8447-23bdb77fee9e.png" title="Notebook collaboration" />

## Pre-Requisites

Before you can start trying out collaborative notebooks, you need to install the following pre-requisites as part of this preview release:

| Pre-Requisite | Host-Required? | Guest-Required? |
|-|-|-|
| Visual Studio Insiders | ✅ | ✅ |
| Live Share v1.0.3541+ | ✅ | ✅ |
| The neccessary notebook extensions (e.g. Jupyter) | ✅ | _N/A_ (Live Share takes care of this!) |

## Getting Started

Once you and your participants have the proper pre-requisites, you can start using Live Share and notebooks using the following steps:

1. Open a notebook within Visual Studio Code
1. Start a Live Share session
1. Once your guests join, you can start co-editing cells and seeing each other's cursors and text highlights
1. Have fun collaborating on notebooks! 🎉 

## Known Issues

The following list represents the set of known issues with the Live Share and notebooks experinece, along with their respective workarounds. 

| Issue | Workaround | 
|-|-|
| "Follow mode" doesn't track scrolling within a notebook | We're working on proper "follow" support for notebooks, but in the meantime, you'll need to manually scroll to the right notebook cell you want to co-edit with your participants. |
| Adding/deleting/moving cells aren't synchronized amongst participants | Save the notebook document and have everyone re-open it. In the future, we'll fully synchronize notebook-level operations in real-time. |
| Notebook editors don't respect read-only Live Share sessions | While guests are able to edit notebook cells, they won't be able to actually save them to disk, and therefore, your security is retained in a read-only session. |
