#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

ln -s  ~/w/v/dotfiles/Brewfile ~/Brewfile
cd ~
brew bundle

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
echo 'export GPG_TTY=$(tty)' >> ~/.zshrc
echo 'alias ccd="echo $(pwd) | pbcopy"' >> ~/.zshrc
echo 'eval $(docker-machine env default)' >> ~/.zshrc
$(brew --prefix)/opt/fzf/install
