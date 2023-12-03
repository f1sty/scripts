#!/usr/bin/env bash

function new_session() {
  tmux new-session -d -n aux -s base
  tmux new-window -n coding
  tmux new-window -n dbg
  tmux new-window -n test
  tmux send-keys -t 2 "cd $(pass work/directory)" Enter
  tmux send-keys -t 3 "cd $(pass work/directory)" Enter
  tmux select-window -t "base:aux"
  tmux attach-session -d
}

tmux attach -t base || new_session
