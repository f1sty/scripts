#!/usr/bin/env bash

set -xe

repo="git@git.sr.ht:~f1sty/dotfiles"
dotfiles_dir=".dotfiles"

cd "$HOME"
git clone ${repo} ${dotfiles_dir}
cd ${dotfiles_dir}

[[ -x "/usr/bin/stow" ]] && stow .
