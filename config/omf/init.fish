# Adds the Code folder (with project) in the cd path
set -xg CDPATH . ~/Code

# Make atom the default editor
set -xg EDITOR "atom"

# Editor for opening gems
set -xg BUNDLER_EDITOR "atom"

# Pulsar configuration repo
set -xg PULSAR_CONF_REPO "nebulab/pulsar-conf"

# Git/Hub
eval (hub alias -s)

### Abbreviations

# Bundler
abbr b "bundle"
abbr b "bundle"
abbr be "bundle exec"
abbr bi "bundle install"
abbr bo "bundle open"

# Ruby/Rails
abbr r "rails"
abbr s "rspec"

# Git
abbr g "git"

# Utility aliases
balias eh "sudo vim /etc/hosts"
balias reload "exec $SHELL"

# Set bin Path
set PATH ~/.bin ./bin $PATH
