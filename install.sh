#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install neovim
echo "alias vim=\"nvim\"\nalias vi=\"nvim\"" >> .zshrc
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp -Rf .config ~/
ln -s ~/.vim ~/.config
