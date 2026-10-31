cask "wrangler" do
  version "1.7.0"
  sha256 "25d094e63c57f525d56ae2de65d4873a564bef3c92ca3fd0900d62af609cf245"

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
