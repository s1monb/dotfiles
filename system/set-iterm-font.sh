#!/usr/bin/env bash
# Configures iterm default font
#

FILE=$(find /Applications/iTerm.app/ -name DefaultBookmark.plist)
LINE=$(grep -A1 "Normal Font" -n $FILE | grep "string" | awk '{print $1}' FS="-")

if (echo $LINE); then
  sed -i '' -e "${LINE}s/Monaco 12/JetBrainsMono Nerd Mono Font 14/" $FILE
fi
