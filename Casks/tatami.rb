cask "tatami" do
  version "1.4.1"
  sha256 "da65f38027fdd08ff43e4a3c47b447f26b9bac4ca025e37fb655104e7bcd8d65"

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
