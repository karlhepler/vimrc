" PHP DOC BLOCKS
nnoremap <buffer> <LEADER>dd :call pdv#DocumentWithSnip()<CR>

" PHP $THIS POINTER SHORTCUT
inoremap <buffer> $<TAB> $this->

" Logging
inoremap <buffer> log<TAB> die(var_dump())<ESC>hi
