" USE VIM MODE INSTEAD OF VI MODE
set nocompatible

" USE AG INSTEAD OF GREP
if (executable('ag'))
    set grepprg=ag\ --nogroup\ --nocolor
endif

" LOAD CONFIG FILES
source $HOME/.vim/config/mappings.vim
source $HOME/.vim/config/plugins.vim
source $HOME/.vim/config/visuals.vim
source $HOME/.vim/config/commands.vim
source $HOME/.vim/config/autocmd.vim

" CHANGE SWAP FILE LOCATION
set directory=$HOME/.vim/.swapfiles//

" CHANGE BACKUP DIRECTORY
set backupdir=$HOME/.vim/.backups//

" SET THE TAGS
set tags=.tags,.tags.vendor
