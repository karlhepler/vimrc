let mapleader=','
let g:mapleader=','

" NORMAL MODE
inoremap jk <ESC>

" SEARCH HIGHLIGHTING OFF
nnoremap <silent> <LEADER><SPACE> :nohlsearch<CR>

" GOTO START/END OF LINE
nnoremap ( ^
vnoremap ( ^
nnoremap ) $
vnoremap ) $

" YANK FROM CURRENT LOCATION TO END OF LINE
nnoremap Y y$

" REFRESH SCREEN, SYNTAX HIGHLIGHTING, & GIT GUTTER
nnoremap <silent> <C-L> :redraw!<CR>:syntax sync fromstart<CR>:GitGutter<CR>:call gitgutter#highlight#define_sign_column_highlight()<CR>

" RELOAD THE CURRENT FILE
nnoremap <silent> <C-F> :e!<CR>:call gitgutter#highlight#define_sign_column_highlight()<CR>

" COMMA+ENTER GOES TO INSERT MODE
nnoremap ,<CR> A,<CR>

" INSERT AND FIND TODO(KJH)
inoremap <LEADER>t TODO(kjh):<SPACE>
nnoremap <silent> <LEADER>t :Ack TODO\(kjh\)<CR>

" <C-8> HIGHLIGHTS WORD
nnoremap <C-W><C-W> *N
vnoremap <C-W><C-W> *N

" CHANGE TAG SPLIT MAPPINGS
nnoremap <silent> <C-W>] :sp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <silent> <C-W><C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" TAME THE HALF-PAGE SCROLLER
nnoremap <C-D> 5j5<C-E>
vnoremap <C-D> 5j5<C-E>
nnoremap <C-U> 5k5<C-Y>
vnoremap <C-U> 5k5<C-Y>

" LEADER+P PASTE FROM SYSTEM CLIPBOARD
nmap <silent> <LEADER>P O<ESC>:set paste<CR>a<C-R>=system("pbpaste")<CR><ESC>:set nopaste<CR>
nmap <silent> <LEADER>p :set paste<CR>:read !pbpaste<CR>:set nopaste<CR>
vmap <silent> <LEADER>p c<ESC>:set paste<CR>a<C-R>=system("pbpaste")<CR><ESC>:set nopaste<CR>
imap <silent> <LEADER>p <ESC>:set paste<CR>a<C-R>=system("pbpaste")<CR><ESC>:set nopaste<CR>a

" LEADER+Y COPY VISUAL SELECTION TO SYSTEM CLIPBOARD
vnoremap <silent> <LEADER>y :<CR>:let @a=@" \| execute "normal! vgvy" \| let res=system("pbcopy", @") \| let @"=@a<CR>

" NEXT LINE NO MATTER WHAT INSERT MODE (FIXES ISSUE WITH COMMENTS)
inoremap <C-J> <ESC>A<CR><ESC>cc

" QUICKFIX MAPPINGS
nnoremap <C-o> :copen<CR>
nnoremap <C-c> :cclose<CR>
nnoremap <C-n> :cnext<CR>
nnoremap <C-j> :cprevious<CR>

" DUDE DEPLOYMENTS
nnoremap <LEADER>dsA :AsyncRun ~/scripts/dude-sync-all<CR>
nnoremap <LEADER>dsa :AsyncRun ~/scripts/dude-sync-assets<CR>
nnoremap <LEADER>dsm :AsyncRun ~/scripts/dude-sync-mail_app<CR>
nnoremap <LEADER>dsp :AsyncRun ~/scripts/dude-sync-platform<CR>
nnoremap <LEADER>dsr :AsyncRun ~/scripts/dude-sync-root<CR>
nnoremap <LEADER>dsv :AsyncRun ~/scripts/dude-sync-vendor<CR>
