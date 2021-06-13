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
    ln -s "$HOME/projects/configs/dotfiles/$item" "$HOME/$item"
done

# download vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
