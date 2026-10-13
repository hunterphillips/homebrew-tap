cask "clean-screen" do
  version "1.0"
  sha256 "f6adf58ea170f7337f4ede0fd9fadd81590a21136c4000d4d4cd0c8d8932964e"

  url "https://github.com/hunterphillips/clean-screen/releases/download/v#{version}/CleanScreen-#{version}.zip"
  name "CleanScreen"
  desc "Hide the menu bar, Dock, desktop icons, and app windows with one shortcut"
  homepage "https://github.com/hunterphillips/clean-screen"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "CleanScreen.app"

  uninstall quit: "com.hunterphillips.CleanScreen"
end
