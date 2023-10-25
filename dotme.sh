#!/usr/bin/env bash

set -xe

PKG_DIR="$HOME/pkgs"
DOTFILES_REPO="git@github.com:f1sty/dotfiles"

function dotfiles() {
  git --git-dir=$PKG_DIR/dotfiles --work-tree=$HOME "$@"
}

mkdir -p $PKG_DIR
cd $PKG_DIR
git clone --bare $DOTFILES_REPO dotfiles

dotfiles config status.showUntrackedFiles no
dotfiles switch main
