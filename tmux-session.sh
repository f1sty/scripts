#!/usr/bin/env bash

function new_session() {
  tmux new-session -d -n coding -s base
  tmux new-window -n dbg
  tmux new-window -n test
  tmux new-window -n cmd
  tmux new-window -n aux
  tmux send-keys -t "base:coding" "cd ~/programming" Enter
  tmux send-keys -t "base:dbg" "cd ~/programming" Enter
  tmux select-window -t "base:coding"
  tmux attach-session -d
}

tmux attach -t base || new_session
