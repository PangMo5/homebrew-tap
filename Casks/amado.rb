cask "amado" do
  version "1.0.1"
  sha256 "9e0d22c34cfdf6ccb59fef1918a418cbc85a2becd6eab00b8708222fa12d71a8"

  url "https://github.com/PangMo5/Amado/releases/download/v#{version}/Amado-#{version}.dmg"
  name "Amado"
  desc "Lock your Mac with one tap or automatically when you walk away"
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
