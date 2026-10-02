cask "salah-bar" do
  version "1.0"
  sha256 "2b0a992aabd4d16f5dd759c6d3c61cc7909e9e4602dfda6c72543f83f99c8a02"

  url "https://github.com/mtahaikiz/homebrew-tap/releases/download/salah-bar-#{version}/SalahBar-#{version}.zip"
  name "Salah Bar"
  desc "Prayer times in the menu bar"
  homepage "https://salahbar.ikiz.dev/"

  livecheck do
    url :url
    regex(/^salah-bar[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :ventura

  app "Salah Bar.app"

  uninstall quit: "dev.ikiz.MacSalah"

  zap trash: "~/Library/Containers/dev.ikiz.MacSalah"
end
