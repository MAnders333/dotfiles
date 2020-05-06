" configs for ctrlp from readme
let g:ctrlp_map = '<c-p>' " remaps fuzzy find
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_show_hidden = 1 " show dotfiles in fuzzy find

