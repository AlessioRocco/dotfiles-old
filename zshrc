# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler git knife osx rails4 rake rbenv brew capistrano)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Make vim the default editor
export EDITOR="vim"

# vimrc
export MYVIMRC="$HOME/.vimrc"

# Editor for opening gems
export BUNDLER_EDITOR="vim"

# Fix for vim in tmux
export TERM="xterm-256color"

# automatically enter directories without cd
setopt auto_cd
cdpath=($HOME $HOME/Code)

# enable colored output from ls, etc
export CLICOLOR=1

# @see
# http://vim.1045645.n5.nabble.com/MacVim-and-PATH-tt3388705.html#a3392363
# # Ensure MacVim has same shell as Terminal
if [[ -a /etc/zshenv ]]; then
  sudo mv /etc/zshenv /etc/zprofile
fi

# Pulsar configuration repo
export PULSAR_CONF_REPO="nebulab/pulsar-conf"

# Aliases
alias t="todo.sh -d ~/.todo_config"
alias eh="sudo vim /etc/hosts"
alias pryr="pry -r ./config/environment.rb"
alias ms="mongod run --config /usr/local/etc/mongod.conf"
alias redis="redis-server /usr/local/etc/redis.conf"
alias p="~/.projects/open"
alias reload="exec $SHELL"

# Boxen environment
[ -f "/opt/boxen/env.sh" ] && source "/opt/boxen/env.sh"
