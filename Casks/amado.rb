cask "amado" do
  version "0.1.0"
  sha256 "34502ebf51ca4ca37cf1b7e924dc7ce84a605879d69e5fcc626058d978bd91e4"

  url "https://github.com/PangMo5/Amado/releases/download/v#{version}/Amado-#{version}.dmg"
  name "Amado"
  desc "Lock your Mac from iPhone, Apple Watch, widgets, or Control Center"
  homepage "https://github.com/PangMo5/Amado"

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Amado.app"

  zap trash: [
    "~/.config/amado",
    "~/Library/Caches/dev.PangMo5.Amado",
    "~/Library/Preferences/dev.PangMo5.Amado.plist",
  ]
end
