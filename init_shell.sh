#!/bin/bash
if [ -f /usr/bin/dnf ]
  then
    ln -s $PWD/fedora.sh ~/.local.sh
fi

if [ -f /usr/bin/apt ]
  then
   ln -s $PWD/ubuntu.sh ~/.local.sh
fi

rm -rf ~/.vim ; ln -s $PWD/.vim ~/
rm ~/.vimrc ; ln -s $PWD/.vimrc ~/

rm ~/.env.sh ; ln -s $PWD/.env.sh ~/
rm ~/.alias.sh ; ln -s $PWD/.alias.sh ~/
rm ~/.zshrc ; ln -s $PWD/.zshrc ~/
rm ~/.gitconfig ; ln -s $PWD/.gitconfig ~/

mkdir ~/.pyenvs
mkdir ~/go
