eval "$(/opt/homebrew/bin/brew shellenv)"

# OH MY POSH ===================
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/spaceship.omp.json)"

# NODE NVM =====================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

source $HOMEBREW_PREFIX/opt/zinit/zinit.zsh
zinit load zdharma-continuum/history-search-multi-word
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit snippet https://gist.githubusercontent.com/hightemp/5071909/raw/

# ALIASES =================
export PATH=$HOME/.cargo/bin:$PATH
alias ls="eza --icons"
alias la="eza --icons -la"
alias cat="bat"
alias ghcli='/opt/homebrew/Cellar/gh/2.46.0/bin/gh'
alias cl-work='find $HOME/work -name "node_modules" -type d -prune -exec rm -rf {} +'



export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# # RUBY RVM ==================
# export PATH="/Users/renatoadorno/.cargo/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Users/renatoadorno/.rvm/bin"
# [[ -s "/Users/renatoadorno/.profile" ]] && source "/Users/renatoadorno/.profile" # Load the default .profile
# [[ -s "/Users/renatoadorno/.rvm/scripts/rvm" ]] && source "/Users/renatoadorno/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"

# Added by Toolbox App
# export PATH="$PATH:/Users/renatoadorno/Library/Application Support/JetBrains/Toolbox/scripts"
# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# PHP =====================
export PATH="/opt/homebrew/opt/php@5.6/bin:$PATH"
export PATH="/opt/homebrew/opt/php@5.6/sbin:$PATH"

# export PATH="/opt/homebrew/opt/php@8.2/bin:$PATH"
# export PATH="/opt/homebrew/opt/php@8.2/sbin:$PATH"

export PATH="$PATH:$HOME/.composer/vendor/bin"

PATH=~/.console-ninja/.bin:$PATH
# pnpm
export PNPM_HOME="/Users/renatoadorno/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# # export PATH="/opt/homebrew/opt/binutils/bin:$PATH"
# # export LDFLAGS="-L/opt/homebrew/opt/binutils/lib"
# # export CPPFLAGS="-I/opt/homebrew/opt/binutils/include"
# # ptm ----
# if [ -f /Users/renatoadorno/.gw/run_gw.sh ]; then
#   . /Users/renatoadorno/.gw/run_gw.sh
# fi

info_help() {
    echo
    echo 'COMANDOS PARA O NVM'
    echo 'nvm ls-remote → escolha a versao'
    echo 'nvm install v18.20.0 → instalar'
    echo 'nvm use node → versão mais recente'
}

PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"