" PHP DOC BLOCKS
nnoremap <buffer> <LEADER>dd :call pdv#DocumentWithSnip()<CR>

" PHP $THIS POINTER SHORTCUT
inoremap <buffer> $<TAB> $this->

" SET INDENTATION PREFERENCES
set tabstop=4       " SHOW EXISTING WITH 4 SPACES WIDTH
set shiftwidth=4    " WHEN INDENTING WITH '>', USE 4 SPACES WIDTH
set expandtab       " ON PRESSING TAB, INSERT 4 SPACES
set softtabstop=4   " WHEN PRESSING BACKSPACE, SKIP 4 SPACES
set shiftround      " USE MULTIPLE OF SHIFT WIDTH WITH '>' & '<'
