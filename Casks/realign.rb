cask "realign" do
  version "1.0.1"
  sha256 "e94e41cab0f1d39a18dcaf48af1ec1891b7238ac1f82f6b810a6e0bc444cb795"

  url "https://github.com/hunterphillips/realign/releases/download/v#{version}/Realign-#{version}.zip"
  name "Realign"
  desc "Save and restore window layouts per display setup"
  homepage "https://github.com/hunterphillips/realign"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Realign.app"

  uninstall quit: "com.hunterphillips.Realign"

  zap trash: "~/Library/Application Support/Realign"
end
