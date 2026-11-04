cask "mittens" do
  version "1.5.0"
  sha256 "04552d9173d09b59d7a9869a751d40874afde312de3a47b7a0364ff6e3d1cba1"

  # The mittens.wingdingos.com host sits behind a bot challenge that curl cannot pass, so the
  # cask fetches from the Cloudflare Pages origin, which serves the same notarized DMG.
  url "https://mittens-a9c.pages.dev/downloads/Mittens-#{version}.dmg"
  name "Mittens"
  desc "Keyboard lock for toddlers: locks the keyboard, trackpad and screen into a play scene"
  homepage "https://mittens.wingdingos.com/"

  livecheck do
    url "https://mittens-a9c.pages.dev/downloads/latest.json"
    regex(/"version":\s*"(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: ">= :sonoma"

  app "Mittens.app"

  zap trash: "~/Library/Preferences/com.wingdingos.mittens.plist"

  caveats <<~EOS
    Mittens needs the macOS Accessibility permission to block system shortcuts while locked.
    Open it from Applications and allow it once in System Settings > Privacy & Security > Accessibility.
    The way out of a locked session: hold control + option and press Q, or hold both for three seconds.
  EOS
end
