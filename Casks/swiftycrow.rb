cask "swiftycrow" do
  version "2.6.0"
  sha256 "0437bbca31b9b3e796ff769e12448c75c060540f5c9d7ea8e869cc1d8d3a4f9a"

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
