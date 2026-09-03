cask "tatami" do
  version "1.13.0"
  sha256 "9dbde3492de5c4d89a6247d25735e7d99e1d54965c1aea819843a196585978f7"

  url "https://github.com/PangMo5/Tatami/releases/download/v#{version}/Tatami-#{version}.dmg"
  name "Tatami"
  desc "macOS workspace manager with BSP window tiling"
  homepage "https://github.com/PangMo5/Tatami"

  auto_updates true
  depends_on macos: :sonoma

  app "Tatami.app"

  zap trash: [
    "~/.config/tatami",
    "~/Library/Caches/dev.PangMo5.Tatami",
    "~/Library/Preferences/dev.PangMo5.Tatami.plist",
  ]
end
