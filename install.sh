#!/usr/bin/env bash
set -e

echo "🚀 Starting macOS environment setup..."

chmod +x config/*.sh

./config/brew.sh
./config/shell.sh
./config/dev.sh
./config/apps.sh
./config/macos.sh

echo "✅ Setup complete. Restart recommended."

