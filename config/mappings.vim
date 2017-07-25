let mapleader=','
let g:mapleader=','

" NORMAL MODE
inoremap jk <ESC>

" SEARCH HIGHLIGHTING OFF
nnoremap <silent> <LEADER><SPACE> :nohlsearch<CR>

" AG PROJECT SEARCH
nnoremap <LEADER>ag :Ag<SPACE>

" REBUILD CTAGS
nnoremap <silent> <LEADER>ctr :RebuildTags<CR>
nnoremap <silent> <LEADER>ctrv :RebuildVendorTags<CR>
nnoremap <silent> <LEADER>ctra :RebuildAllTags<CR>

" EDIT VIMRC FILES
nnoremap <silent> <LEADER>vev :e ~/.vim/vimrc<CR>
nnoremap <silent> <LEADER>vem :e ~/.vim/config/mappings.vim<CR>
nnoremap <silent> <LEADER>vep :e ~/.vim/plugins.vim<CR>
nnoremap <silent> <LEADER>veP :e ~/.vim/config/plugins.vim<CR>
nnoremap <silent> <LEADER>ved :e ~/.vim/config/display.vim<CR>
nnoremap <silent> <LEADER>vec :e ~/.vim/config/commands.vim<CR>
nnoremap <silent> <LEADER>vea :e ~/.vim/config/autocmd.vim<CR>
nnoremap <silent> <LEADER>vef :e ~/.vim/config/functions.vim<CR>
nnoremap <LEADER>ves :e ~/.vim/Ultisnips/
nnoremap <LEADER>vet :e ~/.vim/ftplugin/
nnoremap <silent> <LEADER>vsv :source ~/.vim/vimrc<CR>

" GOTO START/END OF LINE
nnoremap ( ^
vnoremap ( ^
nnoremap ) $
vnoremap ) $

" DELETE FROM CURRENT LOCATION TO START/END OF LINE
nnoremap d( d^
nnoremap d) d$

" YANK FROM CURRENT LOCATION TO START/END OF LINE
nnoremap y( y^
nnoremap y) y$
nnoremap Y y$

" REFRESH SCREEN, SYNTAX HIGHLIGHTING, & GIT GUTTER
nnoremap <silent> <C-L> :redraw!<CR>:syntax sync fromstart<CR>:GitGutter<CR>:call gitgutter#highlight#define_sign_column_highlight()<CR>

" RELOAD THE CURRENT FILE
nnoremap <silent> <C-F> :e!<CR>:call gitgutter#highlight#define_sign_column_highlight()<CR>

" COMMA+ENTER GOES TO INSERT MODE
nnoremap ,<CR> A,<CR>

" INSERT AND FIND TODO(KJH)
inoremap <LEADER>t TODO(kjh):<SPACE>
nnoremap <silent> <LEADER>t :Ag TODO\\\(kjh\\\) --ignore vendor --ignore node_modules --ignore bower_components --ignore builds --ignore public<CR>

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

" TRIGGER EMMET WITHOUT ENDING WITH A COMMA
imap <expr> <LEADER><TAB> emmet#expandAbbrIntelligent("\<C-Y>")

" OPEN LARAVEL.LOG FILE
nnoremap <silent> <LEADER>ll :e [sS]ource/storage/logs/laravel.log<CR>

" LEADER+P PASTE FROM SYSTEM CLIPBOARD
nmap <silent> <LEADER>p :set paste<CR>:read !pbpaste<CR>:set nopaste<CR>
vmap <silent> <LEADER>p c<ESC>:set paste<CR>a<C-R>=system("pbpaste")<CR><ESC>:set nopaste<CR>
imap <silent> <LEADER>p <ESC>:set paste<CR>a<C-R>=system("pbpaste")<CR><ESC>:set nopaste<CR>a

" LEADER+Y COPY VISUAL SELECTION TO SYSTEM CLIPBOARD
vnoremap <silent> <LEADER>y :<CR>:let @a=@" \| execute "normal! vgvy" \| let res=system("pbcopy", @") \| let @"=@a<CR>

" DELETE ALL BUFFERS EXCEPT THIS ONE
nnoremap <silent> <LEADER>bda :%bd<CR><C-^>

" NEXT LINE NO MATTER WHAT INSERT MODE (FIXES ISSUE WITH COMMENTS)
inoremap <C-J> <ESC>A<CR><ESC>cc
