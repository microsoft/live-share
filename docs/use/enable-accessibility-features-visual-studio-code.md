---
title: Enable Accessibility Features in Visual Studio Code
titleSuffix: Live Share
description: Learn how to enable accessibility features in Visual Studio Live Share.
ms.date: 03/16/2022
ms.reviewer: fubaduba
ms.topic: how-to
author: daytonellwanger
ms.author: daellwan
manager: davsterl
---

<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Enable accessibility features

By default, Live Share keeps you aware of what other participants in the session are doing with visual indicators - a cursor to match each participant's location, a shared viewport in follow mode, synchronized edits, and so on. Live Share also has a setting to surface this information audibly, `liveshare.accessibility.accessibilityFeaturesEnabled`. With accessibility features enabled, Live Share plays various sounds and messages to keep you aware of what other participants are doing in a non-disruptive way.

## General information

At all times, Live Share will

- Play a sound when you follow someone and announce their name and position.
- Play a sound when you unfollow someone and announce their name.
- Announce when a guest joins or leaves the session.

## Outside of follow mode

When you are not following another participant

- If someone edits on your line, Live Share will play an edit sound and announce the name of the participant editing on your line. For subsequent edits, Live Share will play the edit sound with no announcement. Live Share will announce when they leave your line.
- If someone edits nearby, Live Share will play an edit sound and announce the name of the participant that is editing nearby. For subsequent edits, Live Share will play a sound indicating the participant is editing nearby with volume proportional to how near they are.

## Follow mode

When you are following another participant, Live Share provides you more information about their activity. Live Share will

- Play an edit sound when they type.
- Play a sound when they change position due to a command, such as Go to Definition. 
- Play a sound when they change position via the keyboard. For a single line change, Live Share will play a key click, followed by a bend sound that indicates the direction of the change, followed by an announcement of the new line. For a multi-line change, Live Share will play a bend sound that indicates the direction of the change, followed by an announcement of the new line.
- Play a bend sound when they change position via the keyboard that indicates the direction of the change, followed by an announcement of the new line.
- Announce that they made a selection. For single line selections, Live Share will read the selection contents. For multi-line selections, Live Share will announce the selected lines.
- Announce when they switch files, indicating the new file name.
- Play a scrolling sound when they scroll, followed by a bend sound that indicates the direction of the change, followed by an announcement of the new visible range.

## Customization

Live Share provides several additional settings to customize these audio cues.

- `liveshare.accessibility.soundsEnabled` - enables feedback sounds.
- `liveshare.accessibility.soundVolume` - sets the volume of sounds.
- `liveshare.accessibility.voiceEnabled` - enables spoken announcements.
- `liveshare.accessibility.speechVolume` - sets the volume of announcements.
- `liveshare.accessibility.speechRate` - sets the speech rate of announcements.
- `liveshare.accessibility.voice` - sets the voice used for announcements. Currently supports 37 different voices, spanning genders, ages, and accents.

Live Share also contributes several commands related to these features that can be bound to keyboard shortcuts.

- `Accessibility: Toggle Sounds Enabled` - toggles the `liveshare.accessibility.soundsEnabled` setting.
- `Accessibility: Toggle Voice Enabled` - toggles the `liveshare.accessibility.voiceEnabled` setting.
- `Accessibility: Announce Co-editor Location` - announces all co-editors' locations, regardless of if they're being followed.
- `Accessibility: Set Output Device` - change the output device used to play audio cues. Note: this command is currently only available on Windows.

## Cursor tethering

With accessibility features enabled, when following another participant Live Share will keep your cursor locked to the same position that the followed participant's cursor is at to make it easier to use the screen reader.

## Braille Displays

With the exception of cursor tethering, the accessibility features described above surface information audibly. We're in the process of exploring how to present this same information tactility to users with braille displays. If you'd like to learn more or be involved, please get in touch with us at vsls-feedback@microsoft.com.

## Network Requirements

Speech is generated by Azure Cognitive Services on demand. This means to receive speech feedback, you need to have an active internet connection and be able to reach the Cognitive Services endpoint - `https://westus2.api.cognitive.microsoft.com`.