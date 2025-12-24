#!/usr/bin/env bash
set -e

echo "🚀 Starting macOS environment setup..."
# Ensure Homebrew is available in this session
if [[ -f /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -f /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi
chmod +x config/*.sh

./config/brew.sh
./config/shell.sh
./config/dev.sh
./config/apps.sh
./config/macos.sh

echo "✅ Setup complete. Restart recommended."

