cask "kuku" do
  version "0.1.2"
  sha256 "23a21ca1634a07d09ee7e33ce6465bdf94ecb0f2fdeb858af645f9d6489edf06"

  url "https://github.com/kuku-mom/kuku/releases/download/#{version}/Kuku.app.tar.gz"
  name "Kuku"
  desc "Like Obsidian, but it learned some new tricks"
  homepage "https://www.kuku.mom"

  app "Kuku.app"

  zap trash: [
    "~/Library/Application Support/com.kuku.app",
    "~/Library/Application Support/com.kuku.appversions",
    "~/Library/Caches/com.kuku.app",
    "~/Library/Logs/com.kuku.app",
    "~/Library/WebKit/com.kuku.app",
  ]
end
