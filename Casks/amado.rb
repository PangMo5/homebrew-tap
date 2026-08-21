cask "amado" do
  version "2.0.2"
  sha256 "f02c34405a500080d94ad3a97198a8828d1cd8bb37e8dfbb376c9fcb3a841d24"

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
