cask "wrangler" do
  version "1.9.3"
  sha256 "a979c65ff4d7bec53c7e96e95ab6eeaeba78eae588d0d1eff79776fb3bd228b9"

  url "https://github.com/mezzie/wrangler/releases/download/v#{version}/Wrangler-#{version}.dmg"
  name "Wrangler"
  desc "Native macOS window manager with grid snapping, drop zones, and auto-tiling"
  homepage "https://github.com/mezzie/wrangler"

  depends_on macos: ">= :ventura"

  app "Wrangler.app"

  zap trash: [
    "~/Library/Preferences/com.rngo.wrangler.plist",
  ]
end
