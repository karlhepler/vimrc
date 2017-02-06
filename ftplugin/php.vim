" NAMESPACE USE
inoremap <buffer> <LEADER>u <ESC>:call IPhpInsertUse()<CR>
noremap <buffer> <LEADER>u :call PhpInsertUse()<CR>

" NAMESPACE INCLUDE
inoremap <buffer> <LEADER>i <ESC>viw<ESC>bi\<ESC>l:call IPhpExpandClass()<CR>
noremap <buffer> <LEADER>i viw<ESC>bi\<ESC>l:call PhpExpandClass()<CR>

" PHP REFACTORING
nnoremap <buffer> <LEADER>ep :call PhpExtractClassProperty()<CR>
vnoremap <buffer> <LEADER>em :call PhpExtractMethod()<CR>
nnoremap <buffer> <LEADER>np :call PhpCreateProperty()<CR>
nnoremap <buffer> <LEADER>du :call PhpDetectUnusedUseStatements()<CR>
vnoremap <buffer> <LEADER>== :call PhpAlignAssigns()<CR>

" PHP DOC BLOCKS
nnoremap <buffer> <LEADER>dd :call pdv#DocumentWithSnip()<CR>
nnoremap <buffer> <LEADER>da :call PhpDocAll()<CR>

" SORT USE STATMENTS
nnoremap <buffer> <LEADER>su mugg/use<CR>V}k! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<CR>:nohl<CR>`u
vnoremap <buffer> <LEADER>! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<CR>

" IMPORT CONSTRUCTOR VARIABLES
nnoremap <buffer> <LEADER>c mcyiwj%O$this->pa = pa;j%kOprotected pa;jj%k2f$x`c
inoremap <buffer> <LEADER>c mcyiwj%O$this->pa = pa;j%kOprotected pa;jj%k2f$x`ca

" PHP $THIS POINTER SHORTCUT
inoremap <buffer> $<TAB> $this->

" PHP INSERT NAMESPACE
nnoremap <buffer> <LEADER>n :call Psr4NamespaceInsert()<CR>

" FANCY BLOCK COMMENTS
inoremap <buffer> <LEADER>c<CR> VUI// A //yypyypkkv$r/jjv$r/occ
