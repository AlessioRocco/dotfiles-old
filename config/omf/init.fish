# Adds the Code folder (with project) in the cd path
set -xg CDPATH . ~/Code

# Make nvim the default editor
set -xg EDITOR "nvim"

# Editor for opening gems
set -xg BUNDLER_EDITOR "atom"

# Pulsar configuration repo
set -xg PULSAR_CONF_REPO "nebulab/pulsar-conf"

# Git/Hub
eval (hub alias -s)
balias g "git"

# Bundle aliases
balias b "bundle"
balias be "bundle exec"
balias bi "bundle install"
balias bo "bundle open"

# Ruby/Rails
balias s fish_rspec
balias r fish_rails

# Utility aliases
balias eh "sudo nvim /etc/hosts"
balias reload "exec $SHELL"

# Set bin Path
set PATH ~/.bin ./bin $PATH
