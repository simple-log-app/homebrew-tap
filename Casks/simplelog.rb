cask "simplelog" do
  version "2.3.0"
  sha256 "4f8c0c77b627fc2c3d126847a9553ee138b544f92355834b4de62b7e679470cc"

  url "https://github.com/simple-log-app/simplelog/releases/download/v#{version}/SimpleLog-macOS-arm64.dmg"
  name "SimpleLog"
  desc "Fast Material Design log viewer for CloudWatch, SSH, Docker, Vercel, GCP, Azure and local files"
  homepage "https://github.com/simple-log-app/simplelog"

  depends_on arch: :arm64

  app "SimpleLog.app"

  zap trash: [
    "~/Library/Application Support/SimpleLog",
    "~/Library/Preferences/com.sindus.simplelog.plist",
    "~/Library/Caches/SimpleLog",
  ]
end
