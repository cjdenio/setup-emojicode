# Setup Emojicode

This is a GitHub Action for setting up an Emojicode compiler! Supports both Linux 🐧 and macOS 🍎 runners.

## Example usage:

```yml
# .github/workflows/build.yml

on: push
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: cjdenio/setup-emojicode@master
        name: Install Emojicode compiler
      - run: emojicodec main.🍇
```
