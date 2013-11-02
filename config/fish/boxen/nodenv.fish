# Configure and activate nodenv. You know, for nodes.

set -x NODENV_ROOT $BOXEN_HOME/nodenv

set -x PATH $BOXEN_HOME/nodenv/bin $PATH

# eval (nodenv init -)
set -x PATH /opt/boxen/nodenv/shims $PATH
nodenv rehash 2>/dev/null

