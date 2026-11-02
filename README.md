# Homebrew tap for Mittens

[Mittens](https://mittens.wingdingos.com/) is a free, notarized macOS menu bar app that locks the
keyboard, trackpad and screen into a play scene so a toddler can press anything.

```sh
brew tap wingdingos/mittens
brew trust wingdingos/mittens   # Homebrew 7+ asks you to trust third-party taps once
brew install --cask mittens
```

Updates: `brew upgrade --cask mittens`. The cask is refreshed automatically by Mittens' release script.
