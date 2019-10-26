#!/usr/bin/bash

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

sudo dnf install ripgrep fd zsh fzf git 

chsh -s =zsh
