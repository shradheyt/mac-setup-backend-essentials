#!/usr/bin/env bash
set -e

if ! command -v brew &>/dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Ensure Homebrew is on PATH (Apple Silicon + Intel safe)
if [[ -f /opt/homebrew/bin/brew ]]; then
  BREW_BIN="/opt/homebrew/bin/brew"
elif [[ -f /usr/local/bin/brew ]]; then
  BREW_BIN="/usr/local/bin/brew"
fi

if [[ -n "$BREW_BIN" ]]; then
  if ! grep -q 'brew shellenv' "$HOME/.zprofile" 2>/dev/null; then
    echo "eval \"\$($BREW_BIN shellenv)\"" >> "$HOME/.zprofile"
  fi
  eval "$($BREW_BIN shellenv)"
fi

echo "🍺 Updating Homebrew..."
brew update

brew install \
  curl \
  wget \
  tree \
  htop \
  tmux \
  ripgrep \
  fd \
  jq \
  fzf \
  bat \
  eza \
  gh \
  neovim

brew install --cask \
  iterm2

