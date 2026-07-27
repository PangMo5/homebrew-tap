cask "tatami" do
  version "1.9.2"
  sha256 "85bd5cf3e523aa79970ae1d4d2b4f0beace036ef10f3406c80111991c6abd487"

  url "https://github.com/PangMo5/Tatami/releases/download/v#{version}/Tatami-#{version}.dmg"
  name "Tatami"
  desc "macOS workspace manager with yabai-style window tiling"
  homepage "https://github.com/PangMo5/Tatami"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Tatami.app"

  zap trash: [
    "~/.config/tatami",
    "~/Library/Caches/dev.PangMo5.Tatami",
    "~/Library/Preferences/dev.PangMo5.Tatami.plist",
  ]
end
