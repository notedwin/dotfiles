if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
setopt AUTO_CD
setopt SHARE_HISTORY             # Share history between all sessions.
setopt MENU_COMPLETE        # Automatically highlight first element of completion menu
setopt AUTO_LIST            # Automatically list choices on ambiguous completion.
setopt COMPLETE_IN_WORD     # Complete from both ends of a word.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY  # Do not execute immediately upon history expansion.
setopt GLOB_DOTS             

ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="true"
# need to gitclone zsh-syntax + autosuggestions
plugins=(git zsh-syntax-highlighting zsh-autosuggestions fzf)
# morhetz/gruvbox
export EDITOR='nvim'
export DIFFPROG='nvim -d'
export FZF_DEFAULT_COMMAND='rg --no-messages --files --no-ignore --hidden --follow --glob "!.git/*"'
export FZF_DEFAULT_OPTS="--no-separator --layout=reverse --inline-info --color=bg+:#3c3836,bg:#32302f,spinner:#fb4934,hl:#928374,fg:#ebdbb2,header:#928374,info:#8ec07c,pointer:#fb4934,marker:#fb4934,fg+:#ebdbb2,prompt:#fb4934,hl+:#fb4934"

HISTFILE="$ZDOTDIR/.history"
HISTSIZE=
SAVEHIST=
export HISTIGNORE="clear:bg:fg:cd:cd -:cd ..:exit:date:w:* --help:ls:l:ll:lll"
export MANPAGER='nvim +Man!'

##ALIASES
alias ll='exa --long --all --group-directories-first --git'

tmux-pane-rg-fzf() {
  RG_PREFIX="rg --files --color=always ~"
  INITIAL_QUERY="${*:-}"
  : | fzf --ansi --disabled --query "$INITIAL_QUERY" \
      --bind "start:reload:$RG_PREFIX {q}" \
      --bind "change:reload:sleep 0.1; $RG_PREFIX {q} || true" \
      --delimiter : \
      --preview 'batcat --color=always {1}' \
      --preview-window 'up,60%,border-bottom,+{2}+3/3,~3' \
      --bind 'enter:become(vim {1} +{2})'
}

# Bind Ctrl-S to open a Tmux pane with rg and fzf
zle -N tmux-pane-rg-fzf
bindkey -M emacs '\C-S' tmux-pane-rg-fzf
bindkey -M vicmd '^S' tmux-pane-rg-fzf
bindkey -M viins '^S' tmux-pane-rg-fzf


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$ZDOTDIR/ohmyzsh"
source $ZSH/oh-my-zsh.sh

bindkey -e
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# if device has a battery, show battery percentage and charging wattage in right prompt
if [[ -e /sys/class/power_supply/BAT0 ]]; then
  POWERLEVEL9K_CUSTOM_BATTERY="upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage/ {printf \" %s%%\", \$2} /energy-rate/ {printf \" %.1fW\", \$2}'"
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=("${POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS[@]}" custom_battery)
fi

eval "$(atuin init zsh)"