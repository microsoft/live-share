---
title: "User Profile - Visual Studio Live Share | Microsoft Docs"
description: "An overview of how to view and remove your Visual Studio Live Share user profile."
ms.custom:
ms.date: 05/222/2018
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

# User Profile

When you authenticate with Visual Studio Live Share, it creates a user profile for you, which allows any participants you collaborate with to see who you are (e.g. your e-mail address, avatar). At any given time, you can view the profile information that Live Share has stored on your behalf, by navigating to one of the following pages (depending on the identity provider you used):

* [Microsoft Account / Azure Active Directory](https://insiders.liveshare.vsengsaas.visualstudio.com/auth/identity/microsoft/viewprofile)
* [GitHub](https://insiders.liveshare.vsengsaas.visualstudio.com/auth/identity/github/viewprofile)

That will ask you to sign-in to verify your identity, and then display the raw JSON output for your user profile.

<img width="500px" src="media/user-profile.png" />

If Visual Studio Live Share doesn't currently have a profile stored for the identity you logged in with, then it will let you know that as well.

<img width="500px" src="media/no-profile.png" />

## Removing Your Profile

If you'd like to remove your user profile, you can either click the link titled `Click here to get your data removed from our systems` on the [user profile page](#user-profile). Or, you can visit one of the following pages directly (depending on the identity provider you used):

* [Microsoft Account / Azure Active Directory](https://insiders.liveshare.vsengsaas.visualstudio.com/auth/identity/microsoft/deleteme)
* [GitHub](https://insiders.liveshare.vsengsaas.visualstudio.com/auth/identity/github/deleteme)

Otherwise, Visual Studio Live Share will automatically delete your profile 30 days after your last sign-in.

## See also

- [Language and platform support](platform-support.md)
- [Connectivity requirements for Live Share](connectivity.md)
- [Security features of Live Share](security.md)
- [All major bugs, feature requests, and limitations](https://aka.ms/vsls-issues)
- [All feature requests and limitations](https://aka.ms/vsls-feature-requests)

Having problems? See [troubleshooting](../troubleshooting.md) or [provide feedback](../support.md).