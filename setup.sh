#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# TODO 1pw login

# TODO copy dotfiles

keybase login
export GPG_TTY=$(tty)
keybase pgp export -s | gpg --import
gpg -d -o dotfiles.zip dotfiles.zip.gpg

unzip dotfiles.zip

echo /usr/local/bin/zsh | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# lost .zshrc!
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
