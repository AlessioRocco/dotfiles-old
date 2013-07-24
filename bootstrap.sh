#!/bin/bash
############################
# Source: http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# bootstrap.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/.dotfiles
############################

########## Variables

dir=~/.dotfiles                    # dotfiles directory
files="config/ zsh/ ackrc aliases ctags gitconfig githelpers gitignore_global rspec tmux.conf todo_config vimrc zshrc"    # list of files/folders to symlink in homedir

##########

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.$file
done
