let mapleader=','
let g:mapleader=','

" NORMAL MODE
inoremap jk <ESC>

" SEARCH HIGHLIGHTING OFF
nnoremap <LEADER><SPACE> :nohlsearch<CR>

" AG PROJECT SEARCH
nnoremap <LEADER>ag :Ag -Q --ignore node_modules --ignore bower_components --ignore .git --ignore public --ignore vendor ''<LEFT>

" PROJECT SEARCH & REPLACE
nnoremap <LEADER>gs :Gsearch<SPACE>
nnoremap <LEADER>gr :Greplace<CR>

" REBUILD TAGS
nnoremap <LEADER>rt :RebuildTags<CR>
nnoremap <LEADER>rvt :RebuildVendorTags<CR>
nnoremap <LEADER>rat :RebuildAllTags<CR>

" EDIT VIMRC FILES
nnoremap <LEADER>vev :vsp ~/.vim/vimrc<CR>
nnoremap <LEADER>vem :vsp ~/.vim/config/mappings.vim<CR>
nnoremap <LEADER>vep :vsp ~/.vim/plugins.vim<CR>
nnoremap <LEADER>ved :vsp ~/.vim/config/display.vim<CR>
nnoremap <LEADER>vec :vsp ~/.vim/config/commands.vim<CR>
nnoremap <LEADER>vea :vsp ~/.vim/config/autocmd.vim<CR>
nnoremap <LEADER>vef :vsp ~/.vim/config/functions.vim<CR>
nnoremap <LEADER>ves :vsp ~/.vim/Ultisnips/
nnoremap <LEADER>vet :vsp ~/.vim/ftplugin/
nnoremap <LEADER>vsv :source ~/.vim/vimrc<CR>

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
nnoremap <C-L> :redraw!<CR>:syntax sync fromstart<CR>:GitGutter<CR>

" STOP CTRL+K FROM BEING DUMB
nnoremap K k

" COMMA+ENTER GOES TO INSERT MODE
nnoremap ,<CR> A,<CR>

" TOGGLE COMMENTS
nnoremap <LEADER>cc :call NERDComment(0,"toggle")<CR>
vnoremap <LEADER>cc :call NERDComment(0,"toggle")<CR>
inoremap <LEADER>cc <ESC>:call NERDComment(0,"toggle")<CR>A

" MAKE THIS LINE A SINGLE LINE COMMENT
inoremap /<CR> <ESC>:call NERDComment(0,"toggle")<CR>jO

" INSERT AND FIND TODO(KJH)
inoremap <LEADER>t TODO(kjh):<SPACE>
nnoremap <LEADER>t :Ag TODO\\\(kjh\\\) --ignore vendor --ignore node_modules --ignore bower_components --ignore .git<CR>

" TODO(kjh): This is still showing callback functions if there is a space before them
nnoremap <LEADER>rf :vimgrep /\((\s*\)\@<!function\C/ %<CR>:copen<CR>

" SHOW/EXIT SPECIAL WINDOWS
nnoremap <LEADER>sq :copen<CR>
nnoremap <LEADER>xq :cclose<CR>
nnoremap <LEADER>sb :buffers<CR>
nnoremap <LEADER>sr :registers<CR>
nnoremap <LEADER>st :tags<CR>
nnoremap <LEADER>sm :messages<CR>
nnoremap <LEADER>sj :jumps<CR>

" * JUST HIGHLIGHTS - DOESN'T GO TO NEXT
nnoremap * *N
vnoremap * *N

" CHANGE TAG SPLIT MAPPINGS
nnoremap <C-W>] :sp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <C-W><C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
