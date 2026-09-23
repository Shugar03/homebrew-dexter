cask "dexter" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/Shugar03/dexter/releases/download/v#{version}/dexter-#{version}-macos-universal.tar.gz"
  name "dexter"
  desc "Local-first agent computer runtime for macOS"
  homepage "https://github.com/Shugar03/dexter"

  depends_on macos: ">= :ventura"

  binary "dexter"
  binary "dexter-overlay"

  caveats <<~EOS
    dexter is ad-hoc signed and not notarized. If Gatekeeper blocks it:
      xattr -d com.apple.quarantine $(which dexter)
    or reinstall with: brew install --no-quarantine shugar03/dexter/dexter
    It also needs Accessibility and Screen Recording permission —
    run `dexter doctor --request` to check and request them.
  EOS
end
