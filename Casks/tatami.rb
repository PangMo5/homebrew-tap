cask "tatami" do
  version "1.15.0"
  sha256 "f5412844c18ee2ec1b93c3e19b79947e4551b6e899b5a1985a0e2e5dd52feda3"

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
