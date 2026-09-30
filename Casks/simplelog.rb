cask "simplelog" do
  version "1.0.8"
  sha256 "474b8756c9cc6cc08477a5be1f7fafb82a02dd0cdf836cf1d233f4fda2361fbf"

  url "https://github.com/simple-log-app/simplelog/releases/download/v#{version}/SimpleLog-macOS.dmg"
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
