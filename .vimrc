" basic settings
syntax on
set backspace=indent,eol,start " Allow backspace in insert mode                                                                               
set clipboard+=unnamedplus " allows to copy from vim into other programs
set colorcolumn=80 " column marks 80 chars
set expandtab " turns tab into 'tabstop' number of spaces
set hlsearch " highlights searches
set ignorecase " ignore case when searching
set incsearch " turns on incremental search
set nobackup " prevents backups before writing a file
set nocompatible " makes vim more useful
set noerrorbells " turns off errorbells
set noswapfile " does not create swapfiles anymore - use undo file in undo directory instead
set nowrap " lines longer than the width of the window won't wrap
set rnu " show relative line numbering
set shiftwidth=4 " when shifting, indent using 4 spaces
set smartcase " switch search to case-sensitive when query contains uppercase letter
set smartindent " smart autoindenting when starting a new line
set splitbelow " creates new window below current window
set splitright " creates new window right of current window
set t_Co=256 " set colors to 256
set tabstop=4 softtabstop=4 " indent using 4 spaces
set undofile " saves undo history to an undo file which it also restores from " defines undo directory
set undodir=~/.vim/undodir " defines undo directory
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " ignores these file-types and directories

" remaps
" leader key to space
let mapleader=" "
" exiting modes 
inoremap jj <Esc>
" saving and quitting
nnoremap <leader>s :w<CR>
vnoremap <leader>s <Esc>:w<CR>gv
nnoremap <leader>q :q<CR>
nnoremap <leader>w :wq<CR>
" managing windows more conveniently
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
" simple resizing of splits
nnoremap - <C-W>-
nnoremap + <C-W>+
" simple yanking
nnoremap <S-Y> y$
vmap <leader>y "+y
" inserting blank lines without entering insert mode
nnoremap <Enter> o<ESC>
nnoremap <S-Enter> O<ESC>
" stop highlighting search result
nnoremap <silent> ,<space> :nohlsearch<CR>

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
call plug#end()

" set color scheme
highlight ColorColumn ctermbg=0 guibg=lightgrey
colorscheme gruvbox

" configs for vim-airline
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

" configs for nerdtree
map <C-n> :NERDTreeToggle<CR>

" configs for nerdcommenter
filetype plugin on
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments

" configs for syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" configs for ctrlp from readme
let g:ctrlp_map = '<c-p>' " remaps fuzzy find
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_show_hidden = 1 " show dotfiles in fuzzy find

" configs for coc.nvim
" coc extensions
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-highlight',
  \ 'coc-html',
  \ 'coc-java',
  \ 'coc-json', 
  \ 'coc-markdownlint', 
  \ 'coc-pairs',
  \ 'coc-prettier', 
  \ 'coc-python', 
  \ 'coc-r-lsp',
  \ 'coc-snippets',
  \ 'coc-sql',
  \ 'coc-xml',
  \ 'coc-yaml',
  \ ]
" TextEdit might fail if hidden is not set.
set hidden
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json,python,markdown setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` commandto fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
