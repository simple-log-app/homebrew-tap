cask "simplelog" do
  version "1.0.3"
  sha256 "42c3caf6914b00bd72db6eef21046b60d8f138bd90e3e9e26fa9326c97c5eb8e"

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
