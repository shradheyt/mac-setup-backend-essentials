#!/usr/bin/env bash
set -e

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "🐚 Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

git clone https://github.com/zsh-users/zsh-autosuggestions \
  ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions || true

git clone https://github.com/zsh-users/zsh-syntax-highlighting \
  ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting || true

ln -sf "$(pwd)/dotfiles/.zshrc" ~/.zshrc

echo "✅ Shell configured"

