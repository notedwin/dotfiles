#!/bin/sh
# default programs
export EDITOR="nvim"
export VISUAL="nvim"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH="$ZDOTDIR/ohmyzsh"
export ZSH_COMPDUMP=$ZDOTDIR/.zcompdump-notedwin
export HISTFILE="$ZDOTDIR/.history"

export DOTFILES="$HOME/.dotfiles"

export FZF_DEFAULT_OPTS="--height 50% \
--border sharp \
--layout reverse \
--color 16 \
--prompt '∷ ' \
--pointer ▶ \
--marker ⇒"