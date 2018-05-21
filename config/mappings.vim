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
nnoremap <silent> <LEADER>f :e!<CR>:call gitgutter#highlight#define_sign_column_highlight()<CR>

" COMMA+ENTER GOES TO INSERT MODE
nnoremap ,<CR> A,<CR>

" INSERT AND FIND TODO(KJH)
inoremap <LEADER>t TODO(kjh):<SPACE>
nnoremap <LEADER>t :Rg TODO(kjh)<CR>

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
nnoremap <Up> :copen<CR>
nnoremap <Down> :cclose<CR>
nnoremap <Left> :cprevious<CR>
nnoremap <Right> :cnext<CR>

" DUDE DEPLOYMENTS
nnoremap <LEADER>dsA :AsyncRun ~/scripts/dude-sync-all<CR>
nnoremap <LEADER>dsa :AsyncRun ~/scripts/dude-sync-assets<CR>
nnoremap <LEADER>dsm :AsyncRun ~/scripts/dude-sync-mail_app<CR>
nnoremap <LEADER>dsp :AsyncRun ~/scripts/dude-sync-platform<CR>
nnoremap <LEADER>dsr :AsyncRun ~/scripts/dude-sync-root<CR>
nnoremap <LEADER>dsv :AsyncRun ~/scripts/dude-sync-vendor<CR>

" VERTIGO.VIM MAPPINGS
nnoremap <silent> <Space>j :<C-U>VertigoDown n<CR>
vnoremap <silent> <Space>j :<C-U>VertigoDown v<CR>
onoremap <silent> <Space>j :<C-U>VertigoDown o<CR>
nnoremap <silent> <Space>k :<C-U>VertigoUp n<CR>
vnoremap <silent> <Space>k :<C-U>VertigoUp v<CR>
onoremap <silent> <Space>k :<C-U>VertigoUp o<CR>

" VIM FUGITIVE - GIT
nnoremap <LEADER>gs :Gstatus<CR>
nnoremap <LEADER>gd :Gdiff<CR>
nnoremap <LEADER>gl :Glog<CR>
nnoremap <LEADER>gb :Gblame<CR>
nnoremap <LEADER>ge :Gedit<CR>
nnoremap <LEADER>gf :Gfetch<CR>
nnoremap <LEADER>gp :Gpull<CR>

" FZF - FILES
nnoremap <C-P> :Files<CR>
inoremap <C-P> <ESC>:Files<CR>
vnoremap <C-P> <ESC>:Files<CR>

" FZF - BUFFERS
nnoremap <C-B> :Buffers<CR>
inoremap <C-B> <ESC>:Buffers<CR>
vnoremap <C-B> <ESC>:Buffers<CR>

" FZF - SEARCH
nnoremap <C-F> :Rg<CR>
inoremap <C-F> <ESC>:Rg<CR>
vnoremap <C-F> y:exe ':Rg ' . @0<CR>

" FZF - BUFFER TAGS
nnoremap <C-T> :BTags<CR>
inoremap <C-T> <ESC>:BTags<CR>
vnoremap <C-T> <ESC>:BTags<CR>

" FZF - GLOBAL TAGS
nnoremap g] yiw:exe ':Tags ' . @0<CR>
vnoremap g] y:exe ':Tags ' . @0<CR>

" TAGBAR
nnoremap <C-\> :TagbarToggle<CR>
vnoremap <C-\> <ESC>:TagbarToggle<CR>
inoremap <C-\> <ESC>:TagbarToggle<CR>
