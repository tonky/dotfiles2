#!/usr/bin/zsh
# apt install starship git kitty fdfind ripgrep neovim htop stress firefox chrome-stable skype zoom slack golang rust

chsh -s `which zsh`

if [ -f /usr/bin/dnf ]
  then
    ln -s $PWD/fedora.sh ~/.os_local.sh
fi

if [ -f /usr/bin/apt ]
  then
   ln -s $PWD/ubuntu.sh ~/.os_local.sh
fi

mkdir -p ~/.config/nvim
ln -s $PWD/init.vim ~/.config/nvim/init.vim

rm ~/.env.sh ; ln -s $PWD/.env.sh ~/
rm ~/.alias.sh ; ln -s $PWD/.alias.sh ~/
rm ~/.zshrc ; ln -s $PWD/.zshrc ~/
rm ~/.gitconfig ; ln -s $PWD/.gitconfig ~/

ln -s $PWS/.config/starship.conf ~/.config/starship.toml
mkdir ~/.config/kitty; ln -s $PWD/kitty.conf ~/.config/kitty/kitty.conf

