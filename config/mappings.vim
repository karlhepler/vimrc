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

" INDENT & KEEP SELECTION
vnoremap > >gv
vnoremap < <gv

" NAMESPACE USE
autocmd FileType php inoremap <LEADER>u <ESC>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <LEADER>u :call PhpInsertUse()<CR>

" NAMESPACE INCLUDE
autocmd FileType php inoremap <LEADER>i <ESC>viw<ESC>bi\<ESC>l:call IPhpExpandClass()<CR>
autocmd FileType php noremap <LEADER>i viw<ESC>bi\<ESC>l:call PhpExpandClass()<CR>

" PHP REFACTORING
autocmd FileType php nnoremap <LEADER>rv :call PhpRenameLocalVariable()<CR>
autocmd FileType php nnoremap <LEADER>rp :call PhpRenameClassVariable()<CR>
autocmd FileType php nnoremap <LEADER>rm :call PhpRenameMethod()<CR>
autocmd FileType php nnoremap <LEADER>ep :call PhpExtractClassProperty()<CR>
autocmd FileType php vnoremap <LEADER>em :call PhpExtractMethod()<CR>
autocmd FileType php nnoremap <LEADER>np :call PhpCreateProperty()<CR>
autocmd FileType php nnoremap <LEADER>du :call PhpDetectUnusedUseStatements()<CR>
autocmd FileType php vnoremap <LEADER>== :call PhpAlignAssigns()<CR>

" PHP DOC BLOCKS
autocmd FileType php nnoremap <LEADER>dd :call pdv#DocumentWithSnip()<CR>
autocmd FileType php nnoremap <LEADER>da :call PhpDocAll()<CR>

" SORT USE STATMENTS
autocmd FileType php vnoremap <LEADER>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<CR>

" IMPORT CONSTRUCTOR VARIABLES
autocmd FileType php nnoremap <LEADER>c mcyiwj%O$this->pa = $pa;j%kOprotected $pa;`c
autocmd FileType php inoremap <LEADER>c mcyiwj%O$this->pa = $pa;j%kOprotected $pa;`ca

" EDIT VIMRC FILES
nnoremap <LEADER>vev :vsp ~/.vim/vimrc<CR>
nnoremap <LEADER>vem :vsp ~/.vim/config/mappings.vim<CR>
nnoremap <LEADER>vep :vsp ~/.vim/plugins.vim<CR>
nnoremap <LEADER>ved :vsp ~/.vim/config/display.vim<CR>
nnoremap <LEADER>vec :vsp ~/.vim/config/commands.vim<CR>
nnoremap <LEADER>vea :vsp ~/.vim/config/autocmd.vim<CR>
nnoremap <LEADER>vef :vsp ~/.vim/config/functions.vim<CR>
nnoremap <LEADER>ves :vsp ~/.vim/Ultisnips/

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

" make this line a single line comment
inoremap /<CR> <ESC>:call NERDComment(0,"toggle")<CR>jO

" PHP $THIS POINTER SHORTCUT
autocmd Filetype php inoremap $<TAB> $this->

" PHP APPEND =>
autocmd Filetype php inoremap => <ESC>A<SPACE>=><SPACE>

" PHP INSERT NAMESPACE
autocmd Filetype php nnoremap <LEADER>n :call Psr4NamespaceInsert()<CR>

" INSERT AND FIND TODO(KJH)
inoremap <LEADER>t TODO(kjh):<SPACE>
nnoremap <LEADER>t :Ag TODO\\\(kjh\\\) --ignore vendor --ignore node_modules --ignore bower_components --ignore .git<CR>

" MATCH BRACE/BRACKET
nnoremap ) %
nnoremap ( %%

" OPEN TAG IN VERTICAL SPLIT
noremap <C-W><C-]> <ESC>:vsp<CR>:exec("tag".expand("<CWORD>"))<CR>
