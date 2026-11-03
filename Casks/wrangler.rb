cask "wrangler" do
  version "1.9.1"
  sha256 "d33a2ba04124dcb9adebd0524e49167988d043bcda1eb418d1112fdaf041b580"

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
