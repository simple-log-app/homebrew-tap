cask "simplelog" do
  version "2.2.6"
  sha256 "87eaf0b5d769d777ac70a54b8d86b7dfad8b937ccec0f4407f94c5edfd40f91d"

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
