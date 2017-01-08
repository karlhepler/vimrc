let mapleader=','
let g:mapleader=','

" NORMAL MODE
inoremap jk <ESC>

" SEARCH HIGHLIGHTING OFF
nnoremap <LEADER><SPACE> :nohlsearch<CR>

" AG PROJECT SEARCH
nnoremap <LEADER>ag :Ag<SPACE>

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
autocmd FileType php inoremap <LEADER>i <ESC>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <LEADER>i :call PhpExpandClass()<CR>

" PHP DOC BLOCKS
nnoremap <buffer> <LEADER>d :call pdv#DocumentWithSnip()<CR>

" PHP REFACTORING
nnoremap <LEADER>rv :call PhpRenameLocalVariable()<CR>
nnoremap <LEADER>rp :call PhpRenameClassVariable()<CR>
nnoremap <LEADER>rm :call PhpRenameMethod()<CR>
nnoremap <LEADER>ep :call PhpExtractClassProperty()<CR>
vnoremap <LEADER>em :call PhpExtractMethod()<CR>
nnoremap <LEADER>np :call PhpCreateProperty()<CR>
nnoremap <LEADER>du :call PhpDetectUnusedUseStatements()<CR>
vnoremap <LEADER>== :call PhpAlignAssigns()<CR>
nnoremap <LEADER>da :call PhpDocAll()<CR>

" SORT USE STATMENTS
vmap <LEADER>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<CR>

" REMAP TAG TRAVERSAL
noremap <LEADER>g <C-]>
noremap <LEADER>t <C-T>
