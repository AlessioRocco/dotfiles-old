# Configure and activate rbenv. You know, for rubies.

set -x RBENV_ROOT $BOXEN_HOME/rbenv

set -x PATH $BOXEN_HOME/rbenv/bin $BOXEN_HOME/rbenv/plugins/ruby-build/bin $PATH

# eval (rbenv init -)
set -x PATH /opt/boxen/rbenv/shims $PATH
source /opt/boxen/rbenv/libexec/../completions/rbenv.fish
rbenv rehash 2>/dev/null
