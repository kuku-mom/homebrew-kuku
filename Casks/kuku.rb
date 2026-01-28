cask "kuku" do
  version "0.1.4"
  sha256 "e23775ccb32959396649f9c3bbd8d73f668f0488f919b1780ab7b807abcc443f"

  url "https://github.com/kuku-mom/kuku/releases/download/#{version}/Kuku.app.tar.gz"
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
