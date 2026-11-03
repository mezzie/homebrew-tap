cask "wrangler" do
  version "1.9.0"
  sha256 "dc7b52bf584d61e5665c703d50e15cf10b59c2530bd14f61edf876b1b3786b3f"

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
