#!/usr/bin/env bash
set -e

if ! command -v brew &>/dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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
  iterm2 \
  visual-studio-code

