cask "swiftycrow" do
  version "2.0.0"
  sha256 "f2a55708c7e03c1868c9e1c74dc1dbba16f558a38748a0d65610d1becfa5e3f5"

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
