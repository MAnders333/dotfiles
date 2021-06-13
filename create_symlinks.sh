#!/bin/sh
# delete broken symlinks in HOME directory
cd "$HOME"
for item in .*
do
	if [[ -L "$item" ]] && [[ ! -e "$item" ]]
	then
		rm -rf $item
	fi
done
# create new symlinks
cd "$HOME/projects/configs/dotfiles"
for item in .*
do
    if [[ $item -ne ".git" ]]
    then
	    ln -s "$HOME/projects/configs/dotfiles/$item" "$HOME/$item"
    fi
done
