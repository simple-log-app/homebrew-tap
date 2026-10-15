cask "simplelog" do
  version "2.2.3"
  sha256 "ce2a0369d4703ff8a35884913664d89553908e7a93ed1966740e03bf55e0316f"

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
