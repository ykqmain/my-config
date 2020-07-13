# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="preference"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(zsh-syntax-highlighting zsh-completions zsh-autosuggestions history history-substring-search extract z osx git brew python sublime web-search)


# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

export MY_HOME="/usr/local"

export PATH="$PATH:$MY_HOME/mysql/bin:$MY_HOME/apache-maven/bin:$MY_HOME/apache-tomcat/bin"
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"


source $ZSH/oh-my-zsh.sh


# COLOR
export HEI="\033[1;30m"
export HONG="\033[1;31m"
export LV="\033[1;32m"
export HUANG="\033[1;33m"
export LAN="\033[1;34m"
export YH="\033[1;35m"
export QING="\033[1;36m"
export BAI="\033[1;37m"
export RES="\033[0m"


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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias td='tldr'
alias sha1='shasum -a 1'
alias sha256='shasum -a 256'

alias clang++="clang++ -std=c++11"
alias py="python3"
# alias pip3update="pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"
# alias pip3update="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"


function lazygit(){
    git add .
    git commit -m "updated: $(date +"%Y-%m-%d %T")"
    git push
}


alias ip1='curl cip.cc'
alias ip2='curl myip.ipip.net'
alias ip3='curl -L tool.lu/ip'

function proxy(){
    export https_proxy=http://127.0.0.1:1087 http_proxy=http://127.0.0.1:1087 all_proxy=socks5://127.0.0.1:1086
    ip1
}

function proxyX(){
    export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
    curl -I www.google.com
}


function hs(){
    cd /Users/yang/Blog
    pwd
    hexo server
}

function hd(){
    cd /Users/yang/Blog
    pwd
    echo ''
    hexo g -d
}

function hcd(){
    cd /Users/yang/Blog
    pwd
    echo ''
    hexo clean
    echo ''
    hexo g -d
}


function ff(){
    ffmpeg -i $1 -hide_banner
}


bindkey '^z' autosuggest-clear
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

