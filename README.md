# Polyglot Translator

This script provides translations between different languages by interfacing with external translation APIs like Google Translate and ChatGPT.

## Features

- Translates incoming and outgoing chat messages into a target language of your choice
- Send private translated messages to specific player.
- More than translation. You can ask ChatGPT to do things for you, like adding a cute emoticon depending on your message content.
- Supports Google Translate and ChatGPT as translation methods 
- Customizable ChatGPT parameters like temperature, top P, penalties, etc.
- Options to translate or ignore your own messages
- Select where translated messages should appear: team chat, global chat, or as notifications 
- Blacklist specific languages from being translated
- Customizable colors and labels for translated chat messages
- Check for updates automatically

**This features list is not updated from time to time, see the changelog upon startup when update finishes.**

## Installation

To install the script:

1. Copy the `PolyglotTranslator.lua` script file
2. Paste the file into your script folder, for example `C:\Users\<USERNAME>\AppData\Roaming\Stand\Lua Scripts`

## Usage

- `Translator Listener On` - Toggle whether incoming messages are translated 
- `Translation Method` - Select Google Translate or ChatGPT for translation
- `Incoming/Outgoing Messages` - Select the translation method for each
- `Target Language` - Select the target language to translate to
- `Send Translated Message` - Translate and send your own message
- `Other Settings` - Change translation colors, labels, and more
- `Check for Updates` - Check if there is a new version of the script available. By default update is run automatically when you start the script.


Translated messages will appear according to your `Translated Message Display` selection. You'll see the original sender name, then the translated text.

## Q&A

### 1. Q: Who sent the message of the translation? Me or someone else?

**A:** If you set **translated message location** to `Stand Notification`, then it appears in popups. If you set it to `Team Chat Networked` or `Global Chat Networked`, it will be **You** for others, and will be the real sender on your screen. Else, it will be the real sender of the message. For options without `Networked`, they aren't visible to others, rather they stay local.

### 2. Q: How to contribute to the localization of the script?

**A:** You can contribute to the localization of the script by making issues or Pull Requests on Github, or post it in a txt file on the Discord server.

### 3. Q: How to change the language of the script?

**A:** By default the localization follows the setting of your Stand. If localization is not completed yet, iit falls back to English.
