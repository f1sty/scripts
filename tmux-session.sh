#!/usr/bin/env bash

function new_session() {
  tmux new-session -d -n coding -s base
  tmux new-window -n test
  tmux new-window -n dbg
  tmux new-window -n cmd
  tmux new-window -n aux
  tmux send-keys -t 1 "cd $(pass work/directory)" Enter
  tmux send-keys -t 2 "cd $(pass work/directory)" Enter
  tmux send-keys -t 3 "cd $(pass work/directory)" Enter
  tmux select-window -t "base:coding"
  tmux attach-session -d
}

tmux attach -t base || new_session
