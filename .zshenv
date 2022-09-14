#!/usr/bin/zsh
#
#
#start neofetch each time a tmux session/window opens
 if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ "$TERM" =~ tmux ]] && [ ! -z "$TMUX" ]; then
  neofetch #--pixterm "/home/lena/Pictures/wallies"
fi
. "$HOME/.cargo/env"
