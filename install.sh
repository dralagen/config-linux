#!/bin/bash

gitRepo="$( cd -P "$(dirname "$0")" && pwd)"


function save()
{
	mv "${1}" "${1}.save" 2> /dev/null
}

# ~/.bashrc
save "${HOME}/.bashrc";
ln -s "${gitRepo}/bash/bashrc" "$HOME/.bashrc"
# ~/.bash_profile
save "${HOME}/.bash_profile";
ln -s "${gitRepo}/bash/bash_profile" "$HOME/.bash_profile"

# ~/.Xdefaults
save "${HOME}/.Xdefaults";
ln -s "${gitRepo}/Xdefaults" "$HOME/.Xdefaults"

# ~/.gitconfig
save "${HOME}/.gitconfig";
ln -s "${gitRepo}/gitconfig" "$HOME/.gitconfig"

# ~/.git-prompt-colors.sh
save "${HOME}/.git-prompt-colors.sh";
ln -s "${gitRepo}/bash/git-prompt-colors.sh" "$HOME/.git-prompt-colors.sh"

