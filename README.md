# Polyglot Translator

This script provides translations between different languages by interfacing with external translation APIs like Google Translate and ChatGPT.

## Features

- Translates incoming and outgoing chat messages into a target language of your choice
- Supports Google Translate and ChatGPT as translation methods 
- Customizable ChatGPT parameters like temperature, top P, penalties, etc.
- Options to translate or ignore your own messages
- Select where translated messages should appear: team chat, global chat, or as notifications 
- Blacklist specific languages from being translated
- Customizable colors and labels for translated chat messages
- Check for updates automatically

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