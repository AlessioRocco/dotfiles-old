#!/bin/sh

git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles
env RCRC=$HOME/dotfiles/rcrc rcup
git clone git://github.com/AlessioRocco/dotfiles ~/dotfiles-local
rcup
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
sh mac 2>&1
