# Adds the Code folder (with project) in the cd path
set -x CDPATH . ~/Code

# Make vim the default editor
set -x EDITOR "vim"

# Editor for opening gems
set -x BUNDLER_EDITOR "vim"

# Pulsar configuration repo
set -x PULSAR_CONF_REPO "nebulab/pulsar-conf"

# Set chruby
source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish
chruby 2.1

# Your custom command path...
set -x PATH ./node_modules/.bin /usr/local/bin $PATH

# Remove duplicate path
varclear PATH

# Setting for the new UTF-8 terminal support in Lion
set -x LC_CTYPE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"
set -x LANG "en_US.UTF-8"
set -x LANGUAGE "en_US.UTF-8"
