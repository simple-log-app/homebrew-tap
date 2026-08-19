cask "simplelog" do
  version "1.0.7"
  sha256 "6a4acf60fbc9843c9d37021f00a53ab8d048a1fccf918c30576447db9846b575"

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
