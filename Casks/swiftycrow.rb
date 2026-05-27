cask "swiftycrow" do
  version "2.0.1"
  sha256 "885718ea6b363438ceea93ee4356fcab93e4f1f45fc1628f2fef8ff8050ede42"

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
