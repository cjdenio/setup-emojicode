#!/bin/bash

if [[ $OSTYPE = "linux-gnu" ]]
then
  INSTALL_OS="Linux"
elif [[ $OSTYPE = "darwin" ]]
then
  INSTALL_OS="Darwin"
else
  echo "Invalid OS: $OSTYPE 😢"
  exit 1
fi

exit

curl -o emojicode.tar.gz -L "https://github.com/emojicode/emojicode/releases/download/v$INPUT_VERSION/Emojicode-$INPUT_VERSION-$INSTALL_OS-x86_64.tar.gz"
tar -xzf emojicode.tar.gz && rm emojicode.tar.gz
cd Emojicode-$INPUT_VERSION-$INSTALL_OS-x86_64
sudo mkdir -p /usr/local/include/emojicode && sudo mv include/* /usr/local/include/emojicode
sudo mkdir -p /usr/local/EmojicodePackages && sudo mv packages/* /usr/local/EmojicodePackages
sudo mv emojicodec /usr/local/bin/emojicodec
cd .. && rm -r Emojicode-$INPUT_VERSION-$INSTALL_OS-x86_64
