cask "simplelog" do
  version "2.2.0"
  sha256 "d61cb7d00b445980aab9446756b43cdb61b3e474bab1e11347d6141abd7483af"

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
