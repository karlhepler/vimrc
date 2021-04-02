" USE VIM MODE INSTEAD OF VI MODE
set nocompatible

" SET THE SHELL TO ZSH.
set shell=zsh

" USE RIPGREP INSTEAD OF GREP
if (executable('rg'))
    set grepprg=rg\ --vimgrep
endif

" LOAD CONFIG FILES
source $HOME/.vim/config/mappings.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/config/plugins.vim " I kinda don't think I need this line.
source $HOME/.vim/config/display.vim
source $HOME/.vim/config/functions.vim
source $HOME/.vim/config/commands.vim
source $HOME/.vim/config/autocmd.vim
source $HOME/.vim/config/coc.vim

" No swap files or backup files
set noswapfile
set nobackup
set nowritebackup

" SET THE TAGS
set tags=.tags

# Allow hidden buffers
set hidden

" Use matchit
packadd! matchit
