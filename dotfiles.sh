#!/usr/bin/env bash

set -xe

local repo="git@git.sr.ht:~f1sty/dotfiles"
local dotfiles_dir=".dotfiles"

cd $HOME
git clone ${repo} ${dotfiles_dir}
cd ${dotfiles_dir}

[[ -x "/usr/bin/stow" ]] && stow .
