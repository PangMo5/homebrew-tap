cask "swiftycrow" do
  version "2.3.0"
  sha256 "3bc7077d1a73c39d6fed0fb6298ce6016e3ec042adf8f6b42009913462ec5ebd"

  url "https://github.com/PangMo5/SwiftyCrow/releases/download/v#{version}/SwiftyCrow-#{version}.dmg"
  name "SwiftyCrow"
  desc "On-device on-screen translator for macOS"
  homepage "https://github.com/PangMo5/SwiftyCrow"

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "SwiftyCrow.app"

  zap trash: [
    "~/.config/SwiftyCrow",
    "~/Library/Caches/dev.PangMo5.SwiftyCrow",
    "~/Library/Preferences/dev.PangMo5.SwiftyCrow.plist",
  ]
end
