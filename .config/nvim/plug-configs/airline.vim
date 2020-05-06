" configs for vim-airline
let g:airline_theme = 'base16_gruvbox_dark_hard'
" show word count for specified filetypes
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#wordcount#filetypes = '\vnotes|help|markdown|rst|org|text|asciidoc|tex|mail'
" show branch name under source control
let g:airline#extensions#branch#enabled = 1
" show added or removed lines under source control
let g:airline#extensions#hunks#non_zero_only = 1 
" show coc errors and warnings
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

