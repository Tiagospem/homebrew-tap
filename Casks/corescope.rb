cask "corescope" do
  version "0.13.2"
  sha256 "89dc900a78930e16b142f24742d39c12b33951b5f57387984408ca46ce2991ec"

  url "https://github.com/Tiagospem/corescope/releases/download/v#{version}/CoreScope-#{version}-macos-universal.zip"
  name "CoreScope"
  desc "Local monitor for dev processes, ports, agents and resources"
  homepage "https://github.com/Tiagospem/corescope"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "CoreScope.app"
  binary "#{appdir}/CoreScope.app/Contents/Resources/bin/corescope"

  uninstall quit: "local.corescope.app"

  zap trash: [
    "~/Library/Application Support/CoreScope",
    "~/Library/Caches/local.corescope.app",
    "~/Library/HTTPStorages/local.corescope.app",
    "~/Library/Preferences/local.corescope.app.plist",
    "~/Library/Saved Application State/local.corescope.app.savedState",
  ]
end
