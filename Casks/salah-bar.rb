cask "salah-bar" do
  version "1.0"
  sha256 "b43d6a66fc9a73f962785087460e8c6472fa7112010e118030140945a6e5f7c9"

  url "https://github.com/mtahaikiz/homebrew-tap/releases/download/salah-bar-#{version}/SalahBar-#{version}.zip",
      verified: "github.com/mtahaikiz/homebrew-tap/"
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
