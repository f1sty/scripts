#!/usr/bin/env bash
# source: https://unix.stackexchange.com/questions/60968/tmux-bottom-status-bar-color-change
for i in {0..255} ; do
  printf "\x1b[38;5;%smcolour%s\n" "${i}" "${i}"
done
