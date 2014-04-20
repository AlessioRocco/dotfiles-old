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

# @see
# http://vim.1045645.n5.nabble.com/MacVim-and-PATH-tt3388705.html#a3392363
# # Ensure MacVim has same shell as Terminal
if [[ -a /etc/zshenv ]]; then
  sudo mv /etc/zshenv /etc/zprofile
fi

# Pulsar configuration repo
export PULSAR_CONF_REPO="nebulab/pulsar-conf"

# Aliases
alias eh="sudo vim /etc/hosts"
alias pryr="pry -r ./config/environment.rb"
alias ms="mongod run --config /usr/local/etc/mongod.conf"
alias redis="redis-server /usr/local/etc/redis.conf"
alias p="~/.projects/open"
alias reload="exec $SHELL"

# Boxen environment
[ -f "/opt/boxen/env.sh" ] && source "/opt/boxen/env.sh"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
