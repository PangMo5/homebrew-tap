cask "swiftycrow" do
  version "2.6.1"
  sha256 "d9160d849e5cc1d060dbea98b233facd3966c7e55eb6bbddea2c746e075bd28e"

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
