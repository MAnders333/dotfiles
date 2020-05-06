" source general settings
source $HOME/.config/nvim/general/settings.vim

" source key remaps
source $HOME/.config/nvim/key/mappings.vim

" source plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" source all plugin configs
for f in split(globpath('$HOME/.config/nvim/plug-configs/', '*.vim'), '\n')
    exe 'source' f
endfor
