let mapleader=','
let g:mapleader=','

" NORMAL MODE
inoremap jk <ESC>

" SEARCH HIGHLIGHTING OFF
nnoremap <silent> <LEADER><SPACE> :nohlsearch<CR>

" AG PROJECT SEARCH
nnoremap <LEADER>ag :Ag -Q --ignore node_modules --ignore bower_components --ignore .git --ignore public --ignore vendor ''<LEFT>

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

" REMAP TOP, MIDDLE, & BOTTOM OF SCREEN
nnoremap <C-J> L
vnoremap <C-J> L
nnoremap <C-K> H
vnoremap <C-K> H
nnoremap <C-M> M
vnoremap <C-M> M

" GOTO START/END OF LINE
nnoremap H ^
vnoremap H ^
nnoremap L $
vnoremap L $

" DELETE FROM CURRENT LOCATION TO START/END OF LINE
nnoremap dH d^
nnoremap dL d$

" YANK FROM CURRENT LOCATION TO START/END OF LINE
nnoremap yH y^
nnoremap yL y$

" REFRESH SCREEN, SYNTAX HIGHLIGHTING, & GIT GUTTER
nnoremap <silent> <C-L> :redraw!<CR>:syntax sync fromstart<CR>:GitGutter<CR>

" STOP CTRL+K FROM BEING DUMB
nnoremap K k

" COMMA+ENTER GOES TO INSERT MODE
nnoremap ,<CR> A,<CR>

" TOGGLE COMMENTS
nnoremap <silent> <LEADER>cc :call NERDComment(0,"toggle")<CR>
vnoremap <silent> <LEADER>cc :call NERDComment(0,"toggle")<CR>
inoremap <silent> <LEADER>cc <ESC>:call NERDComment(0,"toggle")<CR>A

" INSERT AND FIND TODO(KJH)
inoremap <LEADER>t TODO(kjh):<SPACE>
nnoremap <silent> <LEADER>t :Ag TODO\\\(kjh\\\) --ignore vendor --ignore node_modules --ignore bower_components --ignore .git --ignore builds<CR>

" * JUST HIGHLIGHTS - DOESN'T GO TO NEXT
nnoremap * *N
vnoremap * *N

" CHANGE TAG SPLIT MAPPINGS
nnoremap <silent> <C-W>] :sp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <silent> <C-W><C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" REMAP % TO TAB - I HAVE TO REMAP C-I TO DO THIS
noremap <C-O><C-O> <C-O>
noremap <C-O><C-I> <C-I>
onoremap <silent> <TAB> :<C-U>call <SNR>41_Match_wrapper('',1,'o')<CR>
nnoremap <silent> <TAB> :<C-U>call <SNR>41_Match_wrapper('',1,'n')<CR>
vnoremap <silent> <TAB> :<C-U>call <SNR>41_Match_wrapper('',1,'v')<CR>m'gv``

" RELOAD THE CURRENT FILE
nnoremap <LEADER>lf :e!<CR>

" PUT FUNCTION DECLARATION AT TOP OF SCREEN WHEN JUMPING
nnoremap ]m ]mzt
nnoremap [m [mzt

" TOGGLE TAGLIST
nnoremap <silent> <LEADER>r :TlistToggle<CR>

" TAME THE HALF-PAGE SCROLLER
nnoremap <C-D> 5j5<C-E>
vnoremap <C-D> 5j5<C-E>
nnoremap <C-U> 5k5<C-Y>
vnoremap <C-U> 5k5<C-Y>

" TRIGGER EMMET WITHOUT ENDING WITH A COMMA
imap <expr> <LEADER><TAB> emmet#expandAbbrIntelligent("\<LEADER>\<TAB>")

" QUICKFIX PREVIEW MAPPINGS
nmap <LEADER>p <plug>(quickr_preview)

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
