cask "kuku" do
  version "0.3.2"
  sha256 "78cc2366b0faf0455176acdcf7789e37d97c8ad189bf7648128d162c65f6e142"

  url "https://github.com/kuku-mom/kuku/releases/download/0.3.2/Kuku.app.tar.gz"
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
