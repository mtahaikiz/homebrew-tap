cask "salah-bar" do
  version "1.0.1"
  sha256 "667cd6a849ac48004652ffcfffc965438b6718a2a4994f709dcbdc07f152dee5"

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
