" Use VIM mode instead of VI mode
set nocompatible

" Use ag instead of grep
if (executable('ag'))
    set grepprg=ag\ --nogroup\ --nocolor
endif

" Load config files
source $HOME/.vim/config/mappings.vim
source $HOME/.vim/config/plugins.vim
source $HOME/.vim/config/visuals.vim
source $HOME/.vim/config/commands.vim
source $HOME/.vim/config/autocmd.vim

" Change swap file location
set directory=$HOME/.vim/.swapfiles//

" Set the tags
set tags=.tags,.tags.vendor
