# Path to Oh My Fish install.
set -gx OMF_PATH /Users/alessio/.local/share/omf

# Customize Oh My Fish configuration path.
# set -gx OMF_CONFIG /Users/alessio/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
if test $TERM_PROGRAM = iTerm.app
  test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
end
