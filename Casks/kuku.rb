cask "kuku" do
  version "0.5.4"
  sha256 "4cf57364492b0d8db600e866f636dd62ad404199706c880e44aed68a54876565"

  url "https://github.com/kuku-mom/kuku/releases/download/0.5.4/Kuku.app.tar.gz"
  name "Kuku"
  desc "Like Obsidian, but it learned some new tricks"
  homepage "https://www.kuku.mom"

  deprecate! date: "2026-06-04", because: "is now distributed through the official website"

  caveats <<~EOS
    Kuku is no longer distributed through Homebrew.
    Please download future versions from:

      https://www.kuku.mom/
  EOS

  livecheck do
    url "https://www.kuku.mom/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Kuku.app"

  zap trash: [
    "~/Library/Application Support/com.kuku.app",
    "~/Library/Application Support/com.kuku.appversions",
    "~/Library/Caches/com.kuku.app",
    "~/Library/Logs/com.kuku.app",
    "~/Library/WebKit/com.kuku.app",
  ]
end
