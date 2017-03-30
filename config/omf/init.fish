# Adds the Code folder (with project) in the cd path
set -xg CDPATH . ~/Code

# Make nvim the default editor
set -xg EDITOR "atom"

# Editor for opening gems
set -xg BUNDLER_EDITOR "atom"

# Pulsar configuration repo
set -xg PULSAR_CONF_REPO "nebulab/pulsar-conf"

# Hub
eval (hub alias -s)

# Bundle aliases
balias b "bundle"
balias be "bundle exec"
balias bi "bundle install"
balias bo "bundle open"

# Console aliases
balias eh "sudo nvim /etc/hosts"
balias reload "exec $SHELL"

# Git
balias g "git"
balias gs "g status"
balias gb "g browse"
balias grc "g rebase --continue"
balias grs "g rebase --skip"

balias pryr "pry -r ./config/environment.rb"
balias ms "brew services start mongodb"
balias redis "brew services start redis"
balias pgs "brew services start postgresql"

# Invoker
balias iks "invoker start invoker.ini"
balias ikp "invoker stop"
balias ikl "invoker list"
balias ikt "invoker tail"
balias iksd "invoker start invoker.ini -d"

# Ruby/Rails
balias s fish_rspec
balias r fish_rails

# Pair
balias txpair "tmux new -s pair"
balias txnew "tmux new -s"
balias txatt "tmux attach -t"
balias txls "tmux list-sessions"

# Set bin Path
set PATH ~/.bin ./bin $PATH
