# mac-setup

A minimal, opinionated, **idempotent macOS environment bootstrap** for developers.

This repository installs **tools and ergonomics only** —  
it deliberately avoids managing **identity, credentials, or secrets**.

Designed to be:
- Safe to run on an already-used Mac
- Easy to review line-by-line
- Easy to modify or extend
- Apple Silicon–friendly

> ⚠️ **This repository is intentionally evolving.**  
> Tools, defaults, and structure will be **updated over time** as needs change and macOS evolves.

---

## 🎯 Philosophy

This setup follows a few strict principles:

- **No identity automation**
  - No Git config
  - No SSH keys
  - No credentials
- **No background services**
- **No hidden magic**
- **Everything is explicit shell**
- **Safe to re-run**

> *Install tools and sane defaults — nothing personal.*

---

## ⚡ Quick Start

### Prerequisites
- macOS (Apple Silicon or Intel)
- Internet connection
- Logged in as a normal user (not root)
- Git & SSH already set up (this repo does **not** manage them)

### Steps

```bash
git clone <this-repo-url>
cd mac-setup
chmod +x install.sh
./install.sh

Restart recommended after the first run

## Repository Structure
mac-setup/
├── install.sh              # Entry point – runs all setup steps
├── config/
│   ├── brew.sh             # Homebrew + core CLI tools
│   ├── shell.sh            # Zsh, Oh My Zsh, shell UX
│   ├── dev.sh              # Languages & infra tooling
│   ├── apps.sh             # GUI productivity apps
│   └── macos.sh            # macOS defaults (keyboard, Finder, Dock)
└── dotfiles/
    └── .zshrc              # Shell configuration (symlinked)

