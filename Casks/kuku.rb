cask "kuku" do
  version "0.5.0"
  sha256 "9a9a82b892aeab8b4e210cce46d8b66d0b2a7e745dddf70e4b00d81b2b7ef65a"

  url "https://github.com/kuku-mom/kuku/releases/download/0.5.0/Kuku.app.tar.gz"
  name "Kuku"
  desc "Like Obsidian, but it learned some new tricks"
  homepage "https://www.kuku.mom"

  livecheck do
    url "https://www.kuku.mom/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  app "Kuku.app"

  zap trash: [
    "~/Library/Application Support/com.kuku.app",
    "~/Library/Application Support/com.kuku.appversions",
    "~/Library/Caches/com.kuku.app",
    "~/Library/Logs/com.kuku.app",
    "~/Library/WebKit/com.kuku.app",
  ]
end
