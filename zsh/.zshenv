#!/bin/sh
# default programs
export EDITOR="nvim"
export VISUAL="nvim"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH_COMPDUMP=$ZDOTDIR/.zcompdump-notedwin
export HISTFILE="$ZDOTDIR/.history"

# export ANSIBLE_CONFIG="$XDG_CONFIG_HOME/ansible/ansible.cfg"
export DOTFILES="$HOME/.dotfiles"

export FZF_DEFAULT_OPTS="--height 50% \
--border sharp \
--layout reverse \
--color 16 \
--prompt '∷ ' \
--pointer ▶ \
--marker ⇒"

if [ -d "/opt/homebrew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
# else
#     echo "WARN: Homebrew not loaded"

if [[ -d "$HOME/.orbstack/shell" ]]; then
  source ~/.orbstack/shell/init.zsh 2>/dev/null || :

if [[ -d "$HOME/.cargo" ]]; then
  . "$HOME/.cargo/env" 

export NVM_DIR="$XDG_CONFIG_HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

