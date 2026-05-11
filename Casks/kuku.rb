cask "kuku" do
  version "0.5.1"
  sha256 "55722b99b916334e9a14cc710912baf8a4d41acf5298f9b9e6577e6d8a64015e"

  url "https://github.com/kuku-mom/kuku/releases/download/0.5.1/Kuku.app.tar.gz"
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
