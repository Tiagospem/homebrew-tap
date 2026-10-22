cask "corescope" do
  version "0.12.1"
  sha256 "0b17e5979aac545ceab80c7835f32f99b2544f3315af78b78a64bf3462bc9f90"

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
