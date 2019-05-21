" USE VIM MODE INSTEAD OF VI MODE
set nocompatible

" SET THE SHELL TO ZSH.
" NOTE: ~/.zshrc MUST BE SYMLINKED INTO ~/.zshenv
set shell=zsh

" USE RIPGREP INSTEAD OF GREP
if (executable('rg'))
    set grepprg=rg\ --vimgrep
endif

" LOAD CONFIG FILES
source $HOME/.vim/config/mappings.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/config/plugins.vim
source $HOME/.vim/config/display.vim
source $HOME/.vim/config/functions.vim
source $HOME/.vim/config/autocmd.vim

" No swap files or backup files
set noswapfile
set nobackup
set nowritebackup

" SET THE TAGS
set tags=.tags
