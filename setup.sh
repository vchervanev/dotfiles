#!/bin/bash

echo /usr/local/bin/fish | sudo tee -a /etc/shells

chsh -s /usr/local/bin/fish
curl -L https://get.oh-my.fish | fish
omf install bobthefish
set -g theme_powerline_fonts no

git clone https://github.com/powerline/fonts --depth=1
cd fonts
./install.sh

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

