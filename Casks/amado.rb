cask "amado" do
  version "2.0.0"
  sha256 "5328bcb47e33689a1f5149f2970a268fb45468afcb95bce12d18a8c58dfd1ae5"

  url "https://github.com/PangMo5/Amado/releases/download/v#{version}/Amado-#{version}.dmg"
  name "Amado"
  desc "Lock your Mac remotely, automatically, or keep it awake with the lid closed"
  homepage "https://github.com/PangMo5/Amado"

  auto_updates true
  depends_on macos: :sequoia

  app "Amado.app"

  zap trash: [
    "~/.config/amado",
    "~/Library/Caches/dev.PangMo5.Amado",
    "~/Library/Preferences/dev.PangMo5.Amado.plist",
  ]
end
