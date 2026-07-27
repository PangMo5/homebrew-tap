cask "amado" do
  version "1.0.0"
  sha256 "226beb0a90fb6ae27aabba08df762e39dc90c93de4953d7161730a05fd1bd6d5"

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
