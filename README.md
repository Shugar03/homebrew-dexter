# homebrew-dexter

Homebrew tap for [dexter](https://github.com/Shugar03/dexter) — a
local-first agent computer runtime for macOS.

```sh
brew install --no-quarantine shugar03/dexter/dexter
```

dexter is ad-hoc signed and not notarized. If Gatekeeper blocks the
binary, remove the quarantine attribute:

```sh
xattr -d com.apple.quarantine $(which dexter)
```

Then grant the permissions it needs:

```sh
dexter doctor --request
```
