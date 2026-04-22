cask "kuku" do
  version "0.3.0"
  sha256 "ba29e6a25f3b8de9cdfde0c80f2a158052dad8892424aae1cc6c2bb85ecb399f"

  url "https://github.com/kuku-mom/kuku/releases/download/0.3.0/Kuku.app.tar.gz"
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
