#!/bin/sh

# inital setup script to prepare mac for nice DX with zsh in combination with iTerm 
# inspired by the setup.sh from bradp on github (https://gist.github.com/bradp/bea76b16d3325f5c47d4)

echo "Installing xcode-stuff"
xcode-select --install

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo 'export PATH="/opt/homebrew/bin:$PATH"' >> $HOME/.zshrc

# Update homebrew recipes
echo "Updating homebrew..."
brew update


echo "Installing other brew stuff..."
brew install tree
brew install wget
brew install imagemagick
# convert an HEIC image to a jpg image
# magick convert example_image.HEIC example_image.jpg

echo "Cleaning up brew"
brew cleanup

echo "Installing homebrew cask"
brew install caskroom/cask/brew-cask

brew install --cask iterm2
