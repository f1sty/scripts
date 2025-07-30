#!/usr/bin/env bash

function new_session() {
  tmux new-session -d -n cmd -s base
  tmux new-window -n coding
  tmux new-window -n dbg
  tmux new-window -n test
  tmux new-window -n aux
  tmux send-keys -t "base:dev" "cd ~/dev; clear" Enter
  tmux send-keys -t "base:dbg" "cd ~/dev; clear" Enter
  tmux select-window -t "base:cmd"
  tmux attach-session -d
}

tmux attach -t base || new_session
