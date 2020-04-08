# Marc's Dotfiles

## Disclaimer

If you should decide to use (parts) of my settings, make sure that you have read and understood them first. Don't just copy settings from the internet.
The dotfiles contain comments describing the settings in most of the cases.

## init.vim

init.vim is neovim's config file. I basically source the .vimrc file such that neovim has the same configs as vim.
I have spent a lot of time optimizing my .vimrc. I have divided it into 4 sections:

- basic settings for vim itself which can be found [here](http://vimdoc.sourceforge.net/htmldoc/options.html)
- remaps of in-house vim keybindings
- installation of plugins
- settings of installed plugins (in addition to coc-settings.json)

## .zshrc

Sources different dotfiles such as .aliases and .functions, sets default editor to neovim and adds python interpreter to \$PATH.
The files .promptline.sh and .tmuxline.sh created by [Evgeni Kolev](https://github.com/edkolev) following his instructions for [tmuxline](https://github.com/edkolev/tmuxline.vim) and [promptline](https://github.com/edkolev/promptline.vim).
In order to find out more about neovim, check it out [here](https://github.com/neovim/neovim).

## .tmux.conf

Tmux is a terminal multiplexer which you can find [here](https://github.com/tmux/tmux). It basically allows you to run multiple terminal instances within one session that you can detach from and, later, reattach to. Also, it allows you to split your terminal into multiple windows which is quite handy when coding.

## keymap.json

keymap.json contains settings for [joplin](https://github.com/laurent22/joplin), my favorite note-taking application that can be run from the terminal.
