" basic settings
syntax on
set backspace=indent,eol,start " Allow backspace in insert mode                                                                               
set clipboard+=unnamedplus " allows to copy from vim into other programs
set expandtab " turns tab into 'tabstop' number of spaces
set hlsearch " highlights searches
set ignorecase " ignore case when searching
set incsearch " turns on incremental search
set mouse=a " enables mouse
set nobackup " prevents backups before writing a file
set nocompatible " makes vim more useful
set noerrorbells " turns off errorbells
set noswapfile " does not create swapfiles anymore - use undo file in undo directory instead
set nowrap "no text wrap
set number relativenumber " show relative line numbering
set shiftwidth=4 " when shifting, indent using 4 spaces
set smartcase " switch search to case-sensitive when query contains uppercase letter
set smartindent " smart autoindenting when starting a new line
set splitbelow " creates new window below current window
set splitright " creates new window right of current window
set t_Co=256 " set colors to 256
set tabstop=4 softtabstop=4 " indent using 4 spaces
set termguicolors
set undofile " saves undo history to an undo file which it also restores from " defines undo directory
set undodir=~/.vim/undodir " defines undo directory
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " ignores these file-types and directories
" background see through
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 
