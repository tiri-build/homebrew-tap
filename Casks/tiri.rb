cask "tiri" do
  version "0.5.0"
  sha256 "b9ce2b69920c4fc8a65930637f79cda2ca6a8e569c94e85af94b2a443ba55f5a"

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
