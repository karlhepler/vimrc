" SET INDENTATION PREFERENCES
set tabstop=4       " SHOW EXISTING WITH 4 SPACES WIDTH
set shiftwidth=4    " WHEN INDENTING WITH '>', USE 4 SPACES WIDTH
set expandtab       " ON PRESSING TAB, INSERT 4 SPACES
set softtabstop=4   " WHEN PRESSING BACKSPACE, SKIP 4 SPACES
set shiftround      " USE MULTIPLE OF SHIFT WIDTH WITH '>' & '<'

" NAMESPACE USE
inoremap <buffer> <LEADER>u <ESC>:call IPhpInsertUse()<CR>
noremap <buffer> <LEADER>u :call PhpInsertUse()<CR>

" NAMESPACE INCLUDE
inoremap <buffer> <LEADER>i <ESC>viw<ESC>bi\<ESC>l:call IPhpExpandClass()<CR>
noremap <buffer> <LEADER>i viw<ESC>bi\<ESC>l:call PhpExpandClass()<CR>

" PHP DOC BLOCKS
nnoremap <buffer> <LEADER>dd :call pdv#DocumentWithSnip()<CR>

" PHP $THIS POINTER SHORTCUT
inoremap <buffer> $<TAB> $this->

" PHP INSERT NAMESPACE
nnoremap <buffer> <LEADER>n :call Psr4NamespaceInsert()<CR>
