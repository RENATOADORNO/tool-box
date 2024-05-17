# homebrew =====================
eval "$(/opt/homebrew/bin/brew shellenv)"

# # OH MY POSH ===================
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/spaceship.omp.json)"

# NODE NVM =====================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Zinit ================
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
zinit load zdharma-continuum/history-search-multi-word
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit snippet https://gist.githubusercontent.com/hightemp/5071909/raw/


# export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
# export ANDROID_HOME=~/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# RUBY RVM ==================
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"

# ANDROID =========
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# # PHP =====================
# export PATH="/opt/homebrew/opt/php@5.6/bin:$PATH"
# export PATH="/opt/homebrew/opt/php@5.6/sbin:$PATH"

# ALIASES =================
export PATH=$HOME/.cargo/bin:$PATH
alias ls="exa --icons"
alias la="exa --icons -la"
alias cat="bat"

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