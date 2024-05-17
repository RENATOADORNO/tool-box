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
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask gitkraken
brew install --cask jetbrains-toolbox
brew install --cask spotify
brew install --cask whatsapp
brew install --cask capacities
brew install --cask discord
# brew install --cask utm
brew install --cask transmission
brew install --cask insomnia
brew install --cask apidog
brew install --cask brave-browser
brew install --cask figma
brew install --cask arc
brew install --cask vlc
brew install --cask google-drive
# brew install --cask zed

echo "Instalação concluída."
