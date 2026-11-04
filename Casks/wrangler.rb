cask "wrangler" do
  version "1.9.2"
  sha256 "ed3cb3d39a106313283523e48d2fc5f20caea1ced659fefa6bfdd3e6dc9447e9"

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
