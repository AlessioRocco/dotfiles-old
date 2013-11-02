# Make the root of Boxen available.
set -x BOXEN_HOME /opt/boxen

# Add homebrew'd stuff to the path.
set -x PATH $BOXEN_HOME/homebrew/bin $BOXEN_HOME/homebrew/sbin $PATH

# Add homebrew'd stuff to the manpath.
set -x MANPATH $BOXEN_HOME/homebrew/share/man $MANPATH

# Add any binaries specific to Boxen to the path.
set -x PATH $BOXEN_HOME/bin $PATH

# Additional environment variables from env.d files.
for f in $FISH_HOME/boxen/*.fish
  [ -r $f ]; and source $f
end

# Add ./bin to the path. This happens after initialization to make
# sure local stubs take precedence over stuff like rbenv.
set -x PATH bin $PATH

# Boxen is active.
if [ -d "$BOXEN_HOME/repo/.git" ];
  set -x BOXEN_SETUP_VERSION `env GIT_DIR=$BOXEN_HOME/repo/.git git rev-parse --short HEAD`
else
  echo "Boxen could not load properly!"
end
