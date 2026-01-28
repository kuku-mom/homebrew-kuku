cask "kuku" do
  version "0.1.1"
  sha256 "fd6f82ea4ed45249d46fb610b93b2808170cc298e159ea6b1b9030366c7f9ca9"

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
