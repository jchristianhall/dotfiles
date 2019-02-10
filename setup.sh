#!/bin/sh

DOTFILES=$HOME/.dotfiles
ASDF=$HOME/.asdf

# Install asdf
if [ ! -e $ASDF ]; then
  git clone https://github.com/asdf-vm/asdf.git $ASDF --branch v0.6.3
fi

# Install Homebrew packages
brew bundle --file=${DOTFILES}/Brewfile

# Set zsh as default shell
chsh -s $(which zsh)

# Install npm
curl -L https://www.npmjs.org/install.sh | sh

# Install pure-prompt
yarn global add gulp-cli pure-prompt webpack-cli

# Install tmuxinator
gem install tmuxinator

# Symlink dotfiles
env RCRC=${DOTFILES}/rcrc rcup -f -x README.md -x Brewfile -x install.sh -x rcrc

# Create Projects directory
if [ ! -e $HOME/Projects ]; then
  mkdir $HOME/Projects
fi
