#!/usr/bin/env bash
# Configures iterm default font
#

FILE=$(find /Applications/iTerm.app/ -name DefaultBookmark.plist)
LINE=$(grep -A1 "Normal Font" $FILE)

if (echo $LINE); then
  sed -i '' -e "${LINE}s/Monaco 12/JetBrainsMono Nerd Mono Font 14/" $FILE
fi
