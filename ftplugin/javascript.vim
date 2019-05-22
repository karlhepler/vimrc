" SET INDENTATION PREFERENCES
set tabstop=2       " SHOW EXISTING WITH 4 SPACES WIDTH
set shiftwidth=2    " WHEN INDENTING WITH '>', USE 4 SPACES WIDTH
set expandtab       " ON PRESSING TAB, INSERT 4 SPACES
set softtabstop=2   " WHEN PRESSING BACKSPACE, SKIP 4 SPACES
set shiftround      " USE MULTIPLE OF SHIFT WIDTH WITH '>' & '<'

" JAVASCRIPT DOCS
nnoremap <buffer> <LEADER>dd :JsDoc<CR>

" Logging
inoremap <buffer> log<TAB> console.log()<ESC>i
