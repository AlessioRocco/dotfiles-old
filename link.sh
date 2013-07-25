#!/bin/bash
############################
# Source: https://news.ycombinator.com/item?id=2553723
# link.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/.dotfiles
############################

#named link.sh, greps out some common things we don't want to link, also have vim stuff in a different dotfiles repo
cd $(dirname $0)

for F in $(ls -a1 | grep -v link.sh | egrep -v "^..?$" | grep -v .DS_Store | egrep -v "^.gitignore$)?$" | egrep -v "^vim$" | egrep -v "^.git$" | egrep -v "^fonts$"); do
  if [ -a $HOME/.$F ]; then
    echo "**** Found existing $F, skipping..."
  elif [ -h $HOME/.$F ]; then
    echo "Already symlinked $F, skipping..."
  else
    echo "Linking $F"
    ln -s $PWD/$F $HOME/.$F 
  fi
done
