#!/bin/bash

ln -s ~/.vim ~/.config
echo "alias vim=\"nvim\"\nalias vi=\"nvim\"" >> .zshrc
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp -Rf .config ~/
