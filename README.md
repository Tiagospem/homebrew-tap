# Tiagospem/homebrew-tap

Homebrew casks for [CoreScope](https://github.com/Tiagospem/corescope), a local, offline-by-default
macOS monitor for dev processes, ports, agents and resources.

```bash
brew install --cask tiagospem/tap/corescope
```

CoreScope is signed ad hoc and not notarized, so Gatekeeper blocks the first launch: open it once,
then click **Open Anyway** in System Settings → Privacy & Security, or run
`xattr -dr com.apple.quarantine /Applications/CoreScope.app`. The app updates itself (opt-in, in
Settings › Updates), so `brew upgrade` leaves it alone.

`Casks/corescope.rb` is bumped by CoreScope's release workflow; change its other stanzas through
[`packaging/homebrew/corescope.rb`](https://github.com/Tiagospem/corescope/blob/main/packaging/homebrew/corescope.rb)
in the CoreScope repository too.
