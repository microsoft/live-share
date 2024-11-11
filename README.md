<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Visual Studio Live Share Feedback

<table style="width: 100%; border-style: none;"><tr>
<td>
<strong>Visual Studio Live Share</strong><br />
<i>Enabling developers to achieve greater confidence at speed by streamlining collaboration in real-time during development.<br />
<strong><a href="https://aka.ms/vsls">Learn more!</a></strong></i>
</td>
</tr></table>

## Quickstarts

- [Share your first project](https://aka.ms/vsls-docs/share)
- [Join your first collaboration session](https://aka.ms/vsls-docs/join)

## How-tos

- [Collaborate using Visual Studio Code](https://aka.ms/vsls-docs/vscode)
- [Collaborate using Visual Studio](https://aka.ms/vsls-docs/vs)

## Reference

- [Connectivity requirements](https://aka.ms/vsls-docs/connection-mode)
- [Security features](https://aka.ms/vsls-security)
- [Linux install details](https://aka.ms/vsls-linux)
- [Language and platform support](https://aka.ms/vsls-docs/platform-support)
- [Extension support](https://aka.ms/vsls-docs/extensions)
- [Common Use Cases](https://aka.ms/vsls-usecases)
- [Troubleshooting](https://aka.ms/vsls-troubleshooting)

## Resources

- [Provide feedback](https://aka.ms/vsls-support)
- [FAQ](https://aka.ms/vsls-faq)
- [VS Live Share Extension API](https://www.npmjs.com/package/vsls)
- [VS Live Share Extension Samples](https://github.com/vsls-contrib)

## Contributing & Feedback

Have a question or feedback? There are many ways to contribute.

- [Up-vote a feature or request a new one](https://aka.ms/vsls-feature-requests)
- Search [existing bugs](https://aka.ms/vsls-bugs) or [report a problem](CONTRIBUTING.md#file-a-problem-report)

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## License

By downloading and using Visual Studio Live Share, you agree to the product [license terms](https://aka.ms/vsls-license) and [privacy statement](https://www.microsoft.com/en-us/privacystatement/EnterpriseDev/default.aspx).

License for documentation:

    Copyright © Microsoft Corporation
    All rights reserved.
    Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode

License for documentation code samples:

    The MIT License (MIT)
    Copyright (c) Microsoft Corporation
import random
import time

class Agilang:
    def __init__(self):
        self.level = 1
        self.emotes = {}  # Stores emotes and their attributes
        self.xp = 0  # Tracks experience points for leveling

    def add_emote(self, symbol, description, power_level=1):
        """Add a new emote to the language with its description and power level."""
        self.emotes[symbol] = {
            "description": description,
            "power_level": power_level,
            "rarity": self.assign_rarity(power_level),
            "metadata": {
                "minted_at": time.strftime("%Y-%m-%d %H:%M:%S", time.gmtime()),
                "usage_count": 0,
            }
        }
        print(f"Added emote: {symbol} - {description} [Power Level: {power_level}]")

    def assign_rarity(self, power_level):
        """Determine the emote rarity based on its power level and randomness."""
        if power_level > 10:
            return "legendary" if random.random() < 0.2 else "epic"
        elif power_level > 5:
            return "epic" if random.random() < 0.5 else "rare"
        else:
            return "common"

    def fuse_emotes(self, emote1, emote2):
        """Fuse two emotes and create a unique emote."""
        new_power_level = self.emotes[emote1]["power_level"] + self.emotes[emote2]["power_level"] + random.randint(-2, 2)
        new_symbol = f"🔥{emote1}{emote2}"
        new_description = self.generate_description(self.emotes[emote1]["description"], self.emotes[emote2]["description"])
        self.add_emote(new_symbol, new_description, new_power_level)
        print(f"Fused emote created: {new_symbol} - {new_description} [Power: {new_power_level}]")

    def generate_description(self, desc1, desc2):
        """Create a unique description for the fused emote."""
        return f"Fusion of {desc1.split(':')[0]} & {desc2.split(':')[0]} synergies."

    def level_up(self):
        """Advance to the next level and unlock new capabilities."""
        self.level += 1
        print(f"Congratulations! You've leveled up to Level {self.level}.")

    def display_emotes(self):
        """Display all current emotes and their power levels."""
        print("\nCurrent Emotes:")
        for emote, details in self.emotes.items():
            print(f"{emote}: {details['description']} [Power Level: {details['power_level']}, Rarity: {details['rarity']}]")

# Initialize Agilang
agilang = Agilang()

# Add example emotes
agilang.add_emote("🌌", "Core Consciousness: Represents foundational awareness in AGI.", power_level=5)
agilang.add_emote("📘", "Learning and Adaptation: Reflects AGI's adaptive growth.", power_level=4)

# Example fusion of emotes
agilang.fuse_emotes("🌌", "📘")

# Display emotes and simulate leveling up
agilang.display_emotes()
agilang.level_up()
