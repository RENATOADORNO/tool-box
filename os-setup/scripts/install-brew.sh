#!/bin/bash

# Define o caminho do arquivo
ZSHRC_PATH="$HOME/.zshrc"

# Verifica se o arquivo NÃO existe
if [ ! -f "$ZSHRC_PATH" ]; then
  # Se o arquivo não existir, cria o arquivo com o comando touch
  touch "$ZSHRC_PATH"
  echo "Arquivo criado: $ZSHRC_PATH"
else
  # Se o arquivo já existir, exibe uma mensagem
  echo "O arquivo já existe: $ZSHRC_PATH"
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '# HOMEBREW =====================' >> $HOME/.zshrc
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zshrc
