#!/bin/bash

# Atualiza o Homebrew
# echo "Atualizando o Homebrew..."
# brew update

# Instala ferramentas de linha de comando
echo "Instalando ferramentas de linha de comando..."
brew install yarn

# ASDF (Descomente se necessário)
# echo "Instalando ASDF e suas dependências..."
# brew install asdf
# brew install gpg
# brew install gawk

# Instala aplicações GUI com Cask
echo "Instalando aplicações GUI..."
brew install --cask bitwarden
brew install --cask transmission
brew install --cask figma
brew install --cask google-drive
brew install --cask obsidian

# EQUIPE ----------------------------
brew install --cask whatsapp
brew install --cask discord

# MIDIA ----------------------------
brew install --cask spotify
brew install --cask vlc

# DEV --------------------------------------
brew install --cask visual-studio-code
brew install --cask gitkraken
brew install --cask jetbrains-toolbox
brew install --cask insomnia
brew install --cask apidog
brew install --cask cyberduck

# WEB ---------------------------------------
brew install --cask google-chrome
brew install --cask brave-browser
# brew install --cask arc


# brew install --cask capacities
# brew install --cask utm
# brew install --cask zed

echo "Instalação concluída."
