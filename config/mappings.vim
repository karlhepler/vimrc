let mapleader=','
let g:mapleader=','

" NORMAL MODE
inoremap jk <ESC>

" SEARCH HIGHLIGHTING OFF
nnoremap <silent> <LEADER><SPACE> :nohlsearch<CR>

" AG PROJECT SEARCH
nnoremap <LEADER>ag :Ag<SPACE>

" PROJECT SEARCH & REPLACE
nnoremap <LEADER>gs :Gsearch<SPACE>

" REBUILD CTAGS
nnoremap <silent> <LEADER>ctr :RebuildTags<CR>
nnoremap <silent> <LEADER>ctrv :RebuildVendorTags<CR>
nnoremap <silent> <LEADER>ctra :RebuildAllTags<CR>

" EDIT VIMRC FILES
nnoremap <silent> <LEADER>vev :vsp ~/.vim/vimrc<CR>
nnoremap <silent> <LEADER>vem :vsp ~/.vim/config/mappings.vim<CR>
nnoremap <silent> <LEADER>vep :vsp ~/.vim/plugins.vim<CR>
nnoremap <silent> <LEADER>ved :vsp ~/.vim/config/display.vim<CR>
nnoremap <silent> <LEADER>vec :vsp ~/.vim/config/commands.vim<CR>
nnoremap <silent> <LEADER>vea :vsp ~/.vim/config/autocmd.vim<CR>
nnoremap <silent> <LEADER>vef :vsp ~/.vim/config/functions.vim<CR>
nnoremap <LEADER>ves :vsp ~/.vim/Ultisnips/
nnoremap <LEADER>vet :vsp ~/.vim/ftplugin/
nnoremap <silent> <LEADER>vsv :source ~/.vim/vimrc<CR>

" GOTO START/END OF LINE
nnoremap <C-H> ^
vnoremap <C-H> ^
nnoremap <C-L> $
vnoremap <C-L> $

" DELETE FROM CURRENT LOCATION TO START/END OF LINE
nnoremap d<C-H> d^
nnoremap d<C-L> d$

" YANK FROM CURRENT LOCATION TO START/END OF LINE
nnoremap y<C-H> y^
nnoremap y<C-L> y$

" REFRESH SCREEN, SYNTAX HIGHLIGHTING, & GIT GUTTER
nnoremap <silent> <LEADER>lr :redraw!<CR>:syntax sync fromstart<CR>:GitGutter<CR>

" COMMA+ENTER GOES TO INSERT MODE
nnoremap ,<CR> A,<CR>

" TOGGLE COMMENTS
nnoremap <silent> <LEADER>cc :call NERDComment(0,"toggle")<CR>
vnoremap <silent> <LEADER>cc :call NERDComment(0,"toggle")<CR>
inoremap <silent> <LEADER>cc <ESC>:call NERDComment(0,"toggle")<CR>A

" INSERT AND FIND TODO(KJH)
inoremap <LEADER>t TODO(kjh):<SPACE>
nnoremap <silent> <LEADER>t :Ag TODO\\\(kjh\\\) --ignore vendor --ignore node_modules --ignore bower_components --ignore builds<CR>

" * JUST HIGHLIGHTS - DOESN'T GO TO NEXT
nnoremap * *N
vnoremap * *N

" CHANGE TAG SPLIT MAPPINGS
nnoremap <silent> <C-W>] :sp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <silent> <C-W><C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" REMAP % TO TAB - I HAVE TO REMAP C-I TO DO THIS
noremap <C-O><C-O> <C-O>
noremap <C-O><C-I> <C-I>
onoremap <silent> <TAB> :<C-U>call <SNR>40_Match_wrapper('',1,'o')<CR>
nnoremap <silent> <TAB> :<C-U>call <SNR>40_Match_wrapper('',1,'n')<CR>
vnoremap <silent> <TAB> :<C-U>call <SNR>40_Match_wrapper('',1,'v')<CR>m'gv``

" RELOAD THE CURRENT FILE
nnoremap <LEADER>lf :e!<CR>

" TOGGLE TAGLIST
nnoremap <silent> <LEADER>r :TlistToggle<CR>

" TAME THE HALF-PAGE SCROLLER
nnoremap <C-D> 5j5<C-E>
vnoremap <C-D> 5j5<C-E>
nnoremap <C-U> 5k5<C-Y>
vnoremap <C-U> 5k5<C-Y>

" TRIGGER EMMET WITHOUT ENDING WITH A COMMA
imap <expr> <LEADER><TAB> emmet#expandAbbrIntelligent("\<LEADER>\<TAB>")

" TOGGLE QUICKFIX LIST
nnoremap <script> <silent> <leader>q :call ToggleQuickfixList()<CR>

" OPEN LARAVEL.LOG FILE
nnoremap <silent> <LEADER>ll :tabe [sS]ource/storage/logs/laravel.log<CR>

" LEADER+P PASTE FROM SYSTEM CLIPBOARD
nmap <silent> <LEADER>p :set paste<CR>:read !pbpaste<CR>:set nopaste<CR>
vmap <silent> <LEADER>p c<ESC>:set paste<CR>a<C-R>=system("pbpaste")<CR><ESC>:set nopaste<CR>
imap <silent> <LEADER>p <ESC>:set paste<CR>a<C-R>=system("pbpaste")<CR><ESC>:set nopaste<CR>a

" LEADER+Y COPY VISUAL SELECTION TO SYSTEM CLIPBOARD
vnoremap <silent> <LEADER>y :<CR>:let @a=@" \| execute "normal! vgvy" \| let res=system("pbcopy", @") \| let @"=@a<CR>

" DELETE ALL BUFFERS EXCEPT THIS ONE
nnoremap <silent> <LEADER>bda :%bd<CR><C-^>

" STOP IT, SHIFT+K!!!
nmap K k
nnoremap K k

" NEXT LINE NO MATTER WHAT INSERT MODE
inoremap <C-J> <ESC>A<CR><ESC>cc
