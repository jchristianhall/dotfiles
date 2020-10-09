#!/bin/sh

DOTFILES=$HOME/.dotfiles

# Install Homebrew packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew bundle --file=${DOTFILES}/Brewfile

# Set zsh as default shell
chsh -s $(which zsh)

# Install npm
curl -L https://www.npmjs.org/install.sh | sh

# Install pure-prompt
yarn global add pure-prompt react-devtools release webpack-cli webpack-dev-server

# Symlink dotfiles
env RCRC=${DOTFILES}/rcrc rcup -f

# Create Projects directory
if [ ! -e $HOME/Projects ]; then
  mkdir $HOME/Projects
fi
