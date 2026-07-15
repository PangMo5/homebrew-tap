cask "tatami" do
  version "1.7.2"
  sha256 "fb59f872ef2ae3554da1e50f499d34fef83b0d4ab5fcbbbd0cd60dd674b2e029"

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
