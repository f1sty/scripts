#!/usr/bin/env bash

set -xe

DOTFILES="$HOME/pkgs"
DOTFILES_REPO="https://github.com/f1sty/dotfiles"

mkdir -p $DOTFILES
cd $DOTFILES
git clone --bare $DOTFILES_REPO dotfiles
alias dotfiles="git --git-dir=$DOTFILES/dotfiles --work-tree=$HOME"
dotfiles config status.showUntrackedFiles no
dotfiles checkout main
