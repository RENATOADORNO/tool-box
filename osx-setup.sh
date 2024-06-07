#!/bin/sh

echo "--- SETUP FOLDER STRUCTURE"
mkdir -p $HOME/bin
mkdir -p $HOME/repos
mkdir -p $HOME/work
mkdir -p $HOME/work/renatoadorno
mkdir -p $HOME/work/alibe
mkdir -p $HOME/work/gw

# bin will need to be added to $PATH manually here in order have nave ready later on
export PATH=$HOME/bin:/usr/local/bin:$PATH

echo "--- SETUP BREW"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# makes sure brew is already available as a command for the reminder of this session
eval "$(/opt/homebrew/bin/brew shellenv)"

brew update
brew upgrade

echo "--- BREW INSTALL DEPS"
brew install jpeg-turbo
brew install optipng
brew install readline

echo "--- BREW INSTALL CLIs"
brew install git
brew install irssi
brew install unrar
brew install tree
brew install tig
brew install ffind
brew install wifi-password
brew install gpg
brew install gpg2
brew install pinentry-mac
brew install hub
brew install asciinema
brew install fd
# brew install ccache
# brew install github/gh/gh
brew install bat
brew install eza
# brew install exa
# brew install hyperfine
# brew install highlight


echo "--- BREW INSTALL APPS"
brew install --cask bitwarden
brew install --cask transmission
brew install --cask figma
brew install --cask google-drive
brew install --cask obsidian
# ----------------------------
brew install --cask whatsapp
brew install discord
# ----------------------------
brew install --cask spotify
brew install --cask vlc
brew install --cask qobuz
# ----------------------------
brew install --cask visual-studio-code
brew install --cask gitkraken
brew install --cask jetbrains-toolbox
# brew install --cask insomnia
brew install --cask apidog
brew install --cask cyberduck
brew install gpg-suite
# ----------------------------
brew install --cask google-chrome
brew install --cask brave-browser
brew install --cask firefox

# ## Link gpg config into place
# ln -s $HOME/Documents/repos/dotfiles/gpg.conf $HOME/.gnupg/gpg.conf
# ln -s $HOME/Documents/repos/dotfiles/gpg-agent.conf $HOME/.gnupg/gpg-agent.conf


echo "--- INSTALL NPM GLOBAL DEPS"
npm install -g ntl
npm install -g serverless

echo "--- NPM LOGIN"
npm login