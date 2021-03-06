#!/bin/bash

INSTALL_OS=$(uname)

curl -o emojicode.tar.gz -L "https://github.com/emojicode/emojicode/releases/download/v$EMOJI_VERSION/Emojicode-$EMOJI_VERSION-$INSTALL_OS-x86_64.tar.gz"
tar -xzf emojicode.tar.gz && rm emojicode.tar.gz
cd Emojicode-$EMOJI_VERSION-$INSTALL_OS-x86_64
sudo mkdir -p /usr/local/include/emojicode && sudo mv include/* /usr/local/include/emojicode
sudo mkdir -p /usr/local/EmojicodePackages && sudo mv packages/* /usr/local/EmojicodePackages
sudo mv emojicodec /usr/local/bin/emojicodec
cd .. && rm -r Emojicode-$EMOJI_VERSION-$INSTALL_OS-x86_64
