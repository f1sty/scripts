#!/usr/bin/env bash

set -xe

DOTFILES="$HOME/pkgs"
DOTFILES_REPO="https://github.com/f1sty/dotfiles"

function dotfiles() {
  git --git-dir=$DOTFILES/dotfiles --work-tree=$HOME "$@"
}

mkdir -p $DOTFILES
cd $DOTFILES
git clone --bare $DOTFILES_REPO dotfiles
dotfiles config status.showUntrackedFiles no
