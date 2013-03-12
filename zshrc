# Projects path and project function
PROJECTS_PATH="$HOME/projects"
change_project(){
 cd $PROJECTS_PATH/$1
}

open_project(){
  tmuxinator $1
}

# Add ~/.zsh/completion to the functions path
fpath=(~/.zsh/completion $fpath)

# completion
autoload -U compinit
compinit

# show completion menu when number of options is at least 2
zstyle ':completion:*' menu select=2

# Fast way to add notes
n() {  $EDITOR ~/notes/"$*".txt }
nls() { tree -CR --noreport ~/notes }
nrm() { rm -r ~/notes/"$*" }

# automatically enter directories without cd
setopt auto_cd

# use vim as an editor
export EDITOR=vim

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# ignore duplicate history entries
setopt histignoredups

# keep more history
export HISTSIZE=200

# Theme configurations
git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "[%{$fg_bold[green]%}${ref#refs/heads/}%{$reset_color%}]"
  fi
}

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='[${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[red]%}%~%{$reset_color%}]$(git_prompt_info) '

# vimrc
export MYVIMRC="$HOME/.vimrc"

# activate nvm
. ~/.nvm/nvm.sh

# Add rbenv
export PATH="$HOME/.rbenv/bin:/usr/local/bin:/usr/local/sbin:$PATH"
eval "$(rbenv init -)"

# Use zsh like vim
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
