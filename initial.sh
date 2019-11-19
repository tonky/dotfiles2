#!/usr/bin/bash

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf copr enable gagbo/kitty-latest

sudo dnf --refresh install kitty ripgrep fd zsh fzf git vlc transmission

chsh -s `which zsh`
