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
" TODO(kjh): :Greplace isn't valid??
nnoremap <LEADER>gr :Greplace<CR>

" REBUILD TAGS
nnoremap <silent> <LEADER>rt :RebuildTags<CR>
nnoremap <silent> <LEADER>rvt :RebuildVendorTags<CR>
nnoremap <silent> <LEADER>rat :RebuildAllTags<CR>

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

" MAKE THIS LINE A SINGLE LINE COMMENT
inoremap <silent> /<CR> <ESC>:call NERDComment(0,"toggle")<CR>jO

" INSERT AND FIND TODO(KJH)
inoremap <LEADER>t TODO(kjh):<SPACE>
nnoremap <silent> <LEADER>tt :Ag TODO\\\(kjh\\\) --ignore vendor --ignore node_modules --ignore bower_components --ignore .git --ignore builds<CR>

" INSERT AND FIND NOTE(KJH)
inoremap <LEADER>n NOTE(kjh):<SPACE>
nnoremap <silent> <LEADER>nn :Ag NOTE\\\(kjh\\\) --ignore vendor --ignore node_modules --ignore bower_components --ignore .git --ignore builds<CR>

" SHOW/EXIT SPECIAL WINDOWS
nnoremap <silent> <LEADER>sq :copen<CR>
nnoremap <silent> <LEADER>xq :cclose<CR>
nnoremap <silent> <LEADER>sb :buffers<CR>
nnoremap <silent> <LEADER>sr :registers<CR>
nnoremap <silent> <LEADER>st :tags<CR>
nnoremap <silent> <LEADER>sm :messages<CR>
nnoremap <silent> <LEADER>sj :jumps<CR>
nnoremap <silent> <LEADER>sc :changes<CR>

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
nnoremap <LEADER>l :e!<CR>

" PUT FUNCTION DECLARATION AT TOP OF SCREEN WHEN JUMPING
nnoremap ]m ]mzt
nnoremap [m [mzt

" TOGGLE TAGLIST
nnoremap <LEADER>tl :TlistToggle<CR>
