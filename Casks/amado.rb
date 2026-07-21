cask "amado" do
  version "0.1.1"
  sha256 "dbbfaf10d18dec4d75b446453acb0a15cd83df61ab7979c5397f0abfab6947fd"

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
