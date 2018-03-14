" USE VIM MODE INSTEAD OF VI MODE
set nocompatible

" SET THE SHELL TO ZSH.
" NOTE: ~/.zshrc MUST BE SYMLINKED INTO ~/.zshenv
set shell=zsh

" USE RIPGREP INSTEAD OF GREP
if (executable('rg'))
    set grepprg=rg\ --nogroup\ --nocolor
endif

" LOAD CONFIG FILES
source $HOME/.vim/config/mappings.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/config/plugins.vim
source $HOME/.vim/config/display.vim
source $HOME/.vim/config/functions.vim
source $HOME/.vim/config/autocmd.vim

" CHANGE SWAP FILE LOCATION
set directory=$HOME/.vim/.swapfiles//

" CHANGE BACKUP DIRECTORY
set backupdir=$HOME/.vim/.backups//

" SET THE TAGS
set tags=.tags
