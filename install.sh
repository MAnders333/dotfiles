#!/usr/bin/env zsh

# install Homebrew if needed, otherwise make sure it's up to date
which -s brew
if [[ $? != 0 ]] ; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

# install command line tools if needed
which -s xcode-select
if [[ $? != 0 ]] ; then
    xcode-select --install
fi

# programs to be installed via brew command
programs="git fzf tmux vim joplin python pip"
for program in $programs ; do
    which -s $program
    if [[ $? != 0 ]] ; then
        echo "Installing ${program} ..."
        brew install $program
    else
        echo "${program} is already installed"
    fi 
done

# install neovim if needed
which -s nvim
if [[ $? != 0 ]] ; then
    echo "Installing neovim..."
    brew install neovim
else
    echo "neovim is already installed"
fi

# programs that can be installed via brew cask
# Brave browser
if [[ ! -d "/Applications/Brave Browser.app" ]] ; then
    echo "Installing Brave..."
    brew cask install brave-browser
else
    echo "Brave is already installed"
fi
# Zotero
if [[ ! -d "/Applications/Zotero.app" ]] ; then
    echo "Installing Zotero..."
    brew cask install zotero
else
    echo "Zotero is already installed"
fi
# toggl
if [[ ! -d "/Applications/TogglDesktop.app" ]] ; then
    echo "Installing Toggl..."
    brew cask install toggl
else
    echo "Toggl is already installed"
fi
# rectangle
if [[ ! -d "/Applications/Rectangle.app" ]] ; then
    echo "Installing Rectangle..."
    brew cask install rectangle
else
    echo "Rectangle is already installed"
fi
# OBS
if [[ ! -d "/Applications/OBS.app" ]] ; then
    echo "Installing OBS..."
    brew cask install obs
else
    echo "OBS is already installed"
fi

# create symbolic links from dotfiles dir to $HOME
# make sure that dotfiles dir is equal to ~/Projects/dotfiles/
dotfiles_dir="$HOME/Projects/dotfiles"

# symbolic links for "normal" files
files="$dotfiles_dir"/*
for file in $files ; do
    echo "Creating symlink for $file..."
    ln -s $file $HOME
done

# symbolic links for dotfiles
dotfiles="$HOME/Projects/dotfiles"/.*
for file in $dotfiles ; do
    echo "Creating symlink for $file..."
    ln -s $file $HOME
done

