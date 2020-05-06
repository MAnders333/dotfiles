" remaps
" leader key to space
let mapleader=" "
" automatically center cursor when entering insert mode
autocmd InsertEnter * norm zz
" exit insert mode 
inoremap jj <Esc>
" movements
nnoremap gl $
nnoremap gh 0
nnoremap gk H
nnoremap gj L
nnoremap gt gg
nnoremap gb G
vnoremap gl $
vnoremap gh 0
vnoremap gk H
vnoremap gj L
vnoremap gt gg
vnoremap gb G
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
" simple yanking
nnoremap <S-Y> y$
vmap <leader>y "+y
" move selected rows up or down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" inserting blank lines without entering insert mode
nnoremap <CR> o<ESC>
" stop highlighting search result
nnoremap <silent> <space>, :nohlsearch<CR>

