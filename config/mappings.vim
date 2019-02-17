let mapleader=','
let g:mapleader=','

" NORMAL MODE
inoremap jk <ESC>

" SEARCH HIGHLIGHTING OFF
nnoremap <silent> <LEADER><SPACE> :nohlsearch<CR>

" GOTO START/END OF LINE
nnoremap H ^
vnoremap H ^
nnoremap L $
vnoremap L $

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

" FZF - SEARCH
nnoremap <C-F> :Rg<CR>
inoremap <C-F> <ESC>:Rg<CR>
vnoremap <C-F> y:exe ':Rg ' . @0<CR>

" FZF - BUFFER TAG LIST
nnoremap <C-B> :BTags<CR>
inoremap <C-B> <ESC>:BTags<CR>
vnoremap <C-B> <ESC>:BTags<CR>

" FZF - GLOBAL TAG LIST
nnoremap g] yiw:exe ":Tags " . @0 . ' .' . expand('%:e') . '$'<CR>
vnoremap g] y:exe ":Tags " . @0 .  ' .' . expand('%:e') . '$'<CR>

" SAVE SESSION
noremap <silent> <LEADER>ss <ESC>:mks! $HOME/.vim/.session.vim<CR>
" LOAD SESSION
noremap <silent> <LEADER>sl <ESC>:source $HOME/.vim/.session.vim<CR>

" SHOW RELATIVE AND ABSOLUTE LINE NUMBERS
nnoremap <silent> <SPACE><SPACE> :setlocal nu! rnu!<CR>
" RELATIVE JUMP UP/DOWN
" space+j;d will jump down 3 lines
" space+ksl will jump up 29 lines
nnoremap <silent> <SPACE>k :setlocal nu rnu<CR>:call RelativeJump("up")<CR>
nnoremap <silent> <SPACE>j :setlocal nu rnu<CR>:call RelativeJump("down")<CR>
function! RelativeJump(direction)
    let l:map = {'a':1, 's':2, 'd':3, 'f':4, 'g':5, 'h':6, 'j':7, 'k':8, 'l':9, ';':0}
    let l:num = l:map[nr2char(getchar())]*10 + l:map[nr2char(getchar())]
    if a:direction == "up"
        call cursor(line(".") - l:num, 0)
    elseif a:direction == "down"
        call cursor(l:num + line("."), 0)
    endif
    setlocal nonu nornu
endfunction

" JUMP WITH K
nnoremap K %

" HORIZONTAL JUMP TO CURSOR
nnoremap <C-j> zs20zh
