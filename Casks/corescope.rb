cask "corescope" do
  version "0.11.0"
  sha256 "4fdf63bf67039b96b08aa1dacc6415dd43c8d0a3e438744684134f0aaad5025a"

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
