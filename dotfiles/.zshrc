export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias ll="eza -l --icons"
alias gs="git status"
alias gc="git commit"
alias gco="git checkout"

export EDITOR=nvim

