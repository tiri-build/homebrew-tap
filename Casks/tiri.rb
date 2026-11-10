cask "tiri" do
  version "0.3.1"
  sha256 "3765fc0dfd6ff5eced4d9b83159ff3c20b3eff959a7fa5adc940fbf76d415287"

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
