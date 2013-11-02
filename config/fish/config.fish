set -x FISH_HOME "$HOME/.config/fish"

# Exports
[ -r "$FISH_HOME/exports.fish" ]; and source "$FISH_HOME/exports.fish"

# Aliases
[ -r "$FISH_HOME/aliases.fish" ]; and source "$FISH_HOME/aliases.fish"

# Boxen environment
[ -r "$FISH_HOME/boxen.fish" ]; and source "$FISH_HOME/boxen.fish"

# Solarazied color schema
[ -r "$FISH_HOME/solarized.fish" ]; and source "$FISH_HOME/solarized.fish"

