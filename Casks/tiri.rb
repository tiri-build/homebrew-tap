cask "tiri" do
  version "0.4.0"
  sha256 "646885a58299084f94cf761de82f1fcc19cd54066717ae4c9cddd7b2dc652bc8"

  url "https://tiri.build/download/Tiri-#{version}.dmg"
  name "Tiri"
  desc "Workspace for Claude Code, Codex and other CLI coding agents"
  homepage "https://tiri.build/"

  livecheck do
    url "https://tiri.build/update.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Tiri.app"

  zap trash: [
    "~/Library/Application Support/Tiri",
    "~/Library/Caches/dev.tiri.app",
    "~/Library/Caches/dev.tiri.app.personal",
    "~/Library/Caches/Tiri",
    "~/Library/HTTPStorages/dev.tiri.app*",
    "~/Library/Preferences/dev.tiri.app.personal.plist",
    "~/Library/Preferences/dev.tiri.app.plist",
    "~/Library/WebKit/dev.tiri.app",
    "~/Library/WebKit/dev.tiri.app.personal",
  ]
end
