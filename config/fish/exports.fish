# Your custom command path...
set -x PATH $PATH ./node_modules/.bin

# Adds the Code folder (with project) in the cd path
set -x CDPATH . ~/Code

# Make vim the default editor
set -x EDITOR "vim"

# Editor for opening gems
set -x BUNDLER_EDITOR "vim"

# Pulsar configuration repo
set -x PULSAR_CONF_REPO "nebulab/pulsar-conf"

# Setting for the new UTF-8 terminal support in Lion
set -x LC_CTYPE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"
set -x LANG "en_US.UTF-8"
set -x LANGUAGE "en_US.UTF-8"

# Don't clear the screen after quitting a manual page
set -x MANPAGER "less -X"
# Colors for Man Pages
set -x LESS_TERMCAP_mb (set_color -o red)
set -x LESS_TERMCAP_md (set_color -o red)
set -x LESS_TERMCAP_me (set_color normal)
set -x LESS_TERMCAP_se (set_color normal)
set -x LESS_TERMCAP_so (set_color -b blue -o yellow)
set -x LESS_TERMCAP_ue (set_color normal)
set -x LESS_TERMCAP_us (set_color -o green)
