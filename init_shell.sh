#!/bin/bash
if [ -f /usr/bin/dnf ]
  then
    ln -s $PWD/fedora.sh ~/.local.sh
fi

if [ -f /usr/bin/apt ]
  then
   ln -s $PWD/ubuntu.sh ~/.local.sh
fi

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config/nvim
ln -s $PWD/init.vim ~/.config/nvim/init.vim

rm ~/.env.sh ; ln -s $PWD/.env.sh ~/
rm ~/.alias.sh ; ln -s $PWD/.alias.sh ~/
rm ~/.zshrc ; ln -s $PWD/.zshrc ~/
rm ~/.gitconfig ; ln -s $PWD/.gitconfig ~/
mkdir ~/.config/kitty; ln -s $PWD/kitty.conf ~/.config/kitty/kitty.conf

mkdir ~/go
