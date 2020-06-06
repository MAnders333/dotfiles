"" install vim-plug as plugin-manager if needed
if empty(glob('$HOME/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('$HOME/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox' " theme
Plug 'vim-airline/vim-airline' " statusbar in vim
Plug 'vim-airline/vim-airline-themes' " themes for statusbar
Plug 'edkolev/tmuxline.vim' " statusbar in tmux
Plug 'edkolev/promptline.vim' " prompt in zsh
Plug 'christoomey/vim-tmux-navigator' " navigate between tmux and vim seemlessly
Plug 'preservim/nerdtree' " tree navigator
Plug 'Xuyuanp/nerdtree-git-plugin' " symbols for git status
Plug 'preservim/nerdcommenter' " comment out stuff
Plug 'vim-utils/vim-man' " vim manuals
Plug 'tpope/vim-fugitive' " git commands
Plug 'kien/ctrlp.vim' " fuzzy find files
Plug 'jremmen/vim-ripgrep' " fast grep
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocompletion, go to definition, linting, ...
Plug 'unblevable/quick-scope' " quicker movements with f and t
Plug 'norcalli/nvim-colorizer.lua' " colorizes color codes
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
