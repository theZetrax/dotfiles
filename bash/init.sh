#!/usr/bin/env sh

BASH_SCRIPTS=~/.scripts/bash
source "$BASH_SCRIPTS"/vars.sh
source "$BASH_SCRIPTS"/utils/lscolors.sh

# For starting-up with tmux
# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux -2
# fi

# For starting-up with fish
if command -v fish &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ fish ]]; then
  exec fish
fi

alias tmux="tmux -2"