#!/usr/bin/env bash

ssh $(cat ~/.local/share/connections | fzf --tmux)
