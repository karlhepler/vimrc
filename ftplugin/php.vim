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
