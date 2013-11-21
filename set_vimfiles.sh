#!/bin/bash
DIR=$(cd $(dirname "$0"); pwd)
mkdir -p $DIR/downloads
git clone --recursive http://github.com/bttf/dotfiles $DIR/downloads/dotfiles
ln -sf $DIR/downloads/dotfiles/vimfiles 	$HOME/.vim
ln -sf $DIR/downloads/dotfiles/vimrc	$HOME/.vimrc
