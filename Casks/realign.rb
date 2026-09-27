cask "realign" do
  version "1.0"
  sha256 "bb23905422e15242df5193acb15f99ad4dbc728588ce9a83a1b7911e36215e39"

  url "https://github.com/hunterphillips/realign/releases/download/v#{version}/Realign-#{version}.zip"
  name "Realign"
  desc "Save and restore window layouts per display setup"
  homepage "https://github.com/hunterphillips/realign"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Realign.app"

  uninstall quit: "com.hunterphillips.Realign"

  zap trash: "~/Library/Application Support/Realign"
end
