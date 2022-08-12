#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/matias/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

xcode-select --install
brew install z
brew install zsh

sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

which zsh /usr/local/bin/zsh

dscl . -read /Users/$USER UserShell

chsh -s /bin/zsh

mkdir -p ~/repos

cd ~/repos

git clone git@github.com:mtraverso/utils.git ~/repos/utils 

cd ~/

mv .zshrc .zshrc.orig
mv .gitconfig .gitconfig.orig
ln -s ~/repos/utils/.zshrc ~/.zshrc
ln -s ~/repos/utils/.gitconfig ~/.gitconfig
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/repos/utils/.oh-my-zsh/zsh-syntax-highlighting
