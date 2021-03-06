# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/iainmaitland/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"

# https://starship.rs/
eval "$(starship init zsh)"

# pyenv
eval "$(pyenv init -)"

# NVM
function initnvm() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
}

function initjabba() {
    source "$HOME/.jabba/jabba.sh"
}

function cellsproxy() {
    docker run -ti -p 8000:80 -e ACCOUNT='cells-1' 325714046698.dkr.ecr.eu-west-1.amazonaws.com/k8s-addons/secure-dev-proxy
}

function cellslogin() {
    sed -i .bak '/access-token/d' ~/.kube/config && kubens
}

# Configure $PATH for pipx and pyenv
# (basically make sure the pipx bin dir is searched before pyenv shims dir)
#PIPX_BIN_PATH="${HOME}/.local/bin"
#PYENV_SHIMS_PATH="${HOME}/.pyenv/shims"
#export PATH=$PIPX_BIN_PATH:$PYENV_SHIMS_PATH:$PATH

# Try turning off Apple Press & Hold for VSCode
#defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
# Run this to re-enable it
# defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool true

# Alias for NeoVim
alias vim="nvim"
alias vi="nvim"

# Use Jabba to automatically set JDK from .jabbarc
#if [ -s "$HOME/.jabba/jabba.sh" ]; then
#  source "$HOME/.jabba/jabba.sh"
#
#  function __jabba_use {
#    [[ -f "./.jabbarc" ]] && echo "\n☕️ Jabba using $(cat .jabbarc)" && jabba use
#  }
#
#  # run __jabba_use every on every cd to a new dir
#  chpwd_functions=(${chpwd_functions[@]} "__jabba_use")
#
#  __jabba_use
#fi
#
#autoload -U +X bashcompinit && bashcompinit
#complete -o nospace -C /usr/local/bin/grapplercat-autocomplete grapplercat
#export PATH="/usr/local/opt/yq@3/bin:$PATH"
#export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
#function __pyenv_use {
#  [[ -f "./.python-version" ]] && echo "Found a .python-version file"
#}
#chpwd_functions=(${chpwd_functions[@]} "__pyenv_use")
