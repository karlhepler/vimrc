let mapleader=','
let g:mapleader=','

" NORMAL MODE
inoremap jk <ESC>

" SEARCH HIGHLIGHTING OFF
nnoremap <silent> <LEADER><SPACE> :nohlsearch<CR>

" REFRESH SCREEN & SYNTAX HIGHLIGHTING
nnoremap <silent> <C-L> :redraw!<CR>:syntax sync fromstart<CR>

" RELOAD THE CURRENT FILE
nnoremap <silent> <LEADER>f :e!<CR>

" COMMA+ENTER GOES TO INSERT MODE
nnoremap ,<CR> A,<CR>

" INSERT AND FIND TODO
inoremap <LEADER>t TODO(karlhepler):<SPACE>
nnoremap <silent> <LEADER>t :Rg TODO\(karlhepler\)<CR>
nnoremap <silent> <LEADER>T :Rg TODO<CR>

" Highlight word without jump in normal mode
nnoremap <C-W><C-W> :keepjumps normal! mi*`i<CR>

" CHANGE TAG SPLIT MAPPINGS
nnoremap <silent> <C-W>] :sp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <silent> <C-W><C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" TAME THE HALF-PAGE SCROLLER
nnoremap <C-D> 5j5<C-E>
vnoremap <C-D> 5j5<C-E>
nnoremap <C-U> 5k5<C-Y>
vnoremap <C-U> 5k5<C-Y>

" NEXT LINE NO MATTER WHAT INSERT MODE (FIXES ISSUE WITH COMMENTS)
inoremap <C-J> <ESC>A<CR><ESC>cc

" QUICKFIX MAPPINGS
nnoremap <Up> :copen<CR>
nnoremap <Down> :cclose<CR>
nnoremap <Left> :cprevious<CR>
nnoremap <Right> :cnext<CR>

" FZF - FILES
nnoremap <C-P> :Files<CR>
inoremap <C-P> <ESC>:Files<CR>
vnoremap <C-P> <ESC>:Files<CR>

" FZF - BUFFERS
nnoremap <LEADER>b :Buffers<CR>
inoremap <LEADER>b <ESC>:Buffers<CR>
vnoremap <LEADER>b <ESC>:Buffers<CR>

" FZF - BUFFER TAG LIST
nnoremap <C-B> :BTags<CR>
inoremap <C-B> <ESC>:BTags<CR>
vnoremap <C-B> <ESC>:BTags<CR>

" SAVE SESSION
noremap <silent> <LEADER>ss <ESC>:mks! /tmp/session.vim<CR>
" LOAD SESSION
noremap <silent> <LEADER>sl <ESC>:source /tmp/session.vim<CR>

" COPY RELATIVE & ABSOLUTE PATHS TO SYSTEM CLIPBOARD
nnoremap <silent> <LEADER>cf :let @+ = expand("%")<CR>
nnoremap <silent> <LEADER>cF :let @+ = expand("%:p")<CR>

" HORIZONTAL CENTER TO CURSOR POSITION
nnoremap <silent> zm zszH

" SEARCH WITH BACKSLASH
nnoremap \ :RgRaw 

" BLOCK DELETE
nnoremap dD g_d%dd

" OPEN TERMINAL AT CURRENT BUFFER PATH
map <C-T> <ESC>:let $BUFPATH=expand('%:p:h')<CR>:terminal<CR>cd $BUFPATH && clear<CR>

" EASY VIEW
nmap <C-W>} =42>
" HARD VIEW
nmap <C-W>{ =42<
" ONLY VIEW
nmap <C-W>O onH{l

noremap H 3H
noremap L 3L
