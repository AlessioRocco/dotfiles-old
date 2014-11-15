set -x FISH_HOME "$HOME/.config/fish"

# Helpers
[ -r "$FISH_HOME/helpers.fish" ]; and source "$FISH_HOME/helpers.fish"

# Exports
[ -r "$FISH_HOME/exports.fish" ]; and source "$FISH_HOME/exports.fish"

# Aliases
[ -r "$FISH_HOME/aliases.fish" ]; and source "$FISH_HOME/aliases.fish"

# Solarazied color schema
[ -r "$FISH_HOME/solarized.fish" ]; and source "$FISH_HOME/solarized.fish"
