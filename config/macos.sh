#!/usr/bin/env bash
set -e

# Keyboard
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Finder
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -int 36

killall Finder || true
killall Dock || true

echo "✅ macOS defaults applied"

