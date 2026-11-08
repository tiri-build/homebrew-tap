cask "tiri" do
  version "0.3.0"
  sha256 "807971d695c575c4ab31e350be1f5c8af6922d03b82bad146577b49757919f72"

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
