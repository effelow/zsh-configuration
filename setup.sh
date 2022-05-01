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
brew install --cask alfred

brew cask cleanup


echo "Setting some Mac settings..."

#"Allow text selection in Quick Look"
defaults write com.apple.finder QLEnableTextSelection -boolean YES

#"Check for software updates daily, not just once per week"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

#"Showing all filename extensions in Finder by default"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

#"Disabling the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

#"Show hidden files in finder"
defaults write com.apple.Finder AppleShowAllFiles -bool true

#"Restart finder to apply settings"
killall Finder

echo "Done!"
