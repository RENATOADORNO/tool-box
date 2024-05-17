#!/bin/bash

# WORK ====================
mkdir -p $HOME/work
mkdir -p $HOME/work/gw
mkdir -p $HOME/work/alibe





# FONTS ======================================================================================
brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font



# ALACRITTY ========================================================================================
brew install --cask alacritty
mkdir -p $HOME/.config
cp -r $HOME/os-setup/config/alacritty $HOME/.config

brew install jandedobbeleer/oh-my-posh/oh-my-posh
echo '# OH MY POSH ===================' >> $HOME/.zshrc
echo 'eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/spaceship.omp.json)"' >> $HOME/.zshrc



# CONFIG-GIT ==================================================================================
brew install git
cat <<EOF > $HOME/.gitconfig
[user]
	name = Renato Adorno
	email = renattoadorno@gmail.com

[core]
	editor = code

[color]
    status = auto
    diff = auto
    branch = auto
    interactive = auto
    ui = true

[color "status"]
    added = green
	changed = yellow
	untracked = red

[alias]
    fc = !git add . && git commit -m '🎉 initial commit' && git branch -m main
    cmt = commit -m
    ck = checkout
    cm = checkout main
    cb = checkout -b
    ca = commit --amend --no-edit
    rc = commit --amend -m
    rb = branch -m
    st = status -sb
    sf = show --name-only
    lg = log --pretty=format:'%Cred%h%Creset %C(bold)%cr%Creset %Cgreen<%an>%Creset %s' --max-count=30
    incoming = !(git fetch --quiet && git log --pretty=format:'%C(yellow)%h %C(white)- %C(red)%an %C(white)- %C(cyan)%d%Creset %s %C(white)- %ar%Creset' ..@{u})
    outgoing = !(git fetch --quiet && git log --pretty=format:'%C(yellow)%h %C(white)- %C(red)%an %C(white)- %C(cyan)%d%Creset %s %C(white)- %ar%Creset' @{u}..)
    unstage = reset HEAD --
    undo = checkout --
    rollback = reset --soft HEAD~1
EOF

# ZNIT ========================================================================================
brew install zinit
echo 'source $HOMEBREW_PREFIX/opt/zinit/zinit.zsh' >> $HOME/.zshrc
echo 'zinit load zdharma-continuum/history-search-multi-word' >> $HOME/.zshrc
echo 'zinit light zsh-users/zsh-autosuggestions' >> $HOME/.zshrc
echo 'zinit light zdharma-continuum/fast-syntax-highlighting' >> $HOME/.zshrc
echo 'zinit snippet https://gist.githubusercontent.com/hightemp/5071909/raw/' >> $HOME/.zshrc
source $HOME/.zshrc



# RUST ========================================================================
brew install rust
cargo install exa bat
cat << EOF >> $HOME/.zshrc

# ALIASES =================
export PATH=$HOME/.cargo/bin:$PATH
alias ls="exa --icons"
alias la="exa --icons -la"
alias cat="bat"
EOF



# NODE =============================================================================
brew install nvm
mkdir $HOME/.nvm
cat << EOF >> $HOME/.zshrc

# NODE-NVM =================
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
EOF
source $HOME/.zshrc



# JAVA AND MOBILE CONFIG =============================================================================
brew tap mdogan/zulu
brew install zulu-jdk11
brew install zulu-jdk17
mkdir -p $HOME/Android
mkdir -p $HOME/Android/Sdk

cat << EOF >> $HOME/.zshrc

# ANDROID =================
export JAVA_HOME=`/usr/libexec/java_home -v 11`
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=`$PATH:$ANDROID_HOME/emulator`
export PATH='$PATH:$ANDROID_HOME/tools'
export PATH='$PATH:$ANDROID_HOME/tools/bin'
export PATH='$PATH:$ANDROID_HOME/platform-tools'
EOF


# GOLANG =========================
# brew install go



# RVM-RUBY =========================
brew install gnupg
gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash
cat << EOF >> $HOME/.zshrc

# RUBY RVM ==================
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"
EOF
