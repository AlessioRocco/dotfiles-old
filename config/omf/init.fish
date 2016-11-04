# Adds the Code folder (with project) in the cd path
set -x CDPATH . ~/Code

# Make nvim the default editor
set -x EDITOR "nvim"

# Editor for opening gems
set -x BUNDLER_EDITOR "nvim"

# Pulsar configuration repo
set -x PULSAR_CONF_REPO "nebulab/pulsar-conf"

# Hub
eval (hub alias -s)

# Bundle aliases
balias b "bundle"
balias be "bundle exec"
balias bi "bundle install"
balias bo "bundle open"

# Console aliases
balias eh="sudo nvim /etc/hosts"
balias reload="exec $SHELL"

# Git
balias g "git"
balias gs "g status"
balias gb "git browse"

balias pryr="pry -r ./config/environment.rb"
balias ms="brew services start mongodb"
balias redis="brew services start redis"
balias pgs="brew services start postgresql"

# Invoker
balias iks="invoker start invoker.ini"
balias ikp="invoker stop"
balias ikl="invoker list"
balias ikt="invoker tail"
balias iksd="invoker start invoker.ini -d"

# Pair
alias txpair="tmux new -s pair"
alias txnew="tmux new -s"
alias txatt="tmux attach -t"
alias txls="tmux list-sessions"

# Set bin Path
set PATH ~/.bin ./bin $PATH

# Set shopify theme kit
set PATH ~/.themekit $PATH
