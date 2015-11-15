# Adds the Code folder (with project) in the cd path
set -x CDPATH . ~/Code

# Make vim the default editor
set -x EDITOR "nvim"

# Editor for opening gems
set -x BUNDLER_EDITOR "nvim"

# Pulsar configuration repo
set -x PULSAR_CONF_REPO "nebulab/pulsar-conf"

# Ruby aliases
balias be "bundle exec"
balias bi "bundle install"
balias bo "bundle open"

# Console aliases
balias git "hub"
balias g "hub"
balias gd "g diff"
balias gs "g status"

balias mux "tmuxinator"

balias eh="sudo vim /etc/hosts"
balias reload="exec $SHELL"

balias pryr="pry -r ./config/environment.rb"
balias ms="mongod run --config /usr/local/etc/mongod.conf"
balias redis="redis-server /usr/local/etc/redis.conf"
