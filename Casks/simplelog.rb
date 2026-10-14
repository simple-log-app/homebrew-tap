cask "simplelog" do
  version "2.0.0"
  sha256 "638cde4ace5dd0114d7c787dcdae8d815082d9229e828ae089425eaae3f43a32"

  url "https://github.com/simple-log-app/simplelog/releases/download/v#{version}/SimpleLog-macOS-universal.dmg"
  name "SimpleLog"
  desc "Fast Material Design log viewer for CloudWatch, SSH, Docker, Vercel, GCP, Azure and local files"
  homepage "https://github.com/simple-log-app/simplelog"

  app "SimpleLog.app"

  zap trash: [
    "~/Library/Application Support/SimpleLog",
    "~/Library/Preferences/com.sindus.simplelog.plist",
    "~/Library/Caches/SimpleLog",
  ]
end
