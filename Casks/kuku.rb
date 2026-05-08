cask "kuku" do
  version "0.4.0"
  sha256 "321f8d569944b60f58697ebb538c402bed94d16770577087a02f3fbf7006cc3e"

  url "https://github.com/kuku-mom/kuku/releases/download/0.4.0/Kuku.app.tar.gz"
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
