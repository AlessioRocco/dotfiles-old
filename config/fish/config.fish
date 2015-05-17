# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
set fish_custom $HOME/.config/fish/custom

# Theme
set fish_theme robbyrussell

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.

### Remove duplicate path
function inc --description 'Increase the value of variable' --no-scope-shadowing
  set $argv[1] (expr $$argv[1] + 1)
end

function varclear --description 'Remove duplicates from environment variable'
  if test (count $argv) = 1
    set -l newvar
    set -l count 0
    for v in $$argv
      if contains -- $v $newvar
        inc count
          else
            set newvar $newvar $v
          end
      end
      set $argv $newvar
      test $count -gt 0
      and echo Removed $count duplicates from $argv
  else
    for a in $argv
      varclear $a
      end
  end
end
varclear PATH
###

set fish_plugins balias brew bundler cask extract gem localhost node osx rails rbenv replace ssh theme tiny tmux autojump vi-mode vundle

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
