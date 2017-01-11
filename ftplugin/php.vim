" NAMESPACE USE
inoremap <BUFFER> <LEADER>u <ESC>:call IPhpInsertUse()<CR>
noremap <BUFFER> <LEADER>u :call PhpInsertUse()<CR>

" NAMESPACE INCLUDE
inoremap <BUFFER> <LEADER>i <ESC>viw<ESC>bi\<ESC>l:call IPhpExpandClass()<CR>
noremap <BUFFER> <LEADER>i viw<ESC>bi\<ESC>l:call PhpExpandClass()<CR>

" PHP REFACTORING
nnoremap <BUFFER> <LEADER>rv :call PhpRenameLocalVariable()<CR>
nnoremap <BUFFER> <LEADER>rp :call PhpRenameClassVariable()<CR>
nnoremap <BUFFER> <LEADER>rm :call PhpRenameMethod()<CR>
nnoremap <BUFFER> <LEADER>ep :call PhpExtractClassProperty()<CR>
vnoremap <BUFFER> <LEADER>em :call PhpExtractMethod()<CR>
nnoremap <BUFFER> <LEADER>np :call PhpCreateProperty()<CR>
nnoremap <BUFFER> <LEADER>du :call PhpDetectUnusedUseStatements()<CR>
vnoremap <BUFFER> <LEADER>== :call PhpAlignAssigns()<CR>

" PHP DOC BLOCKS
nnoremap <BUFFER> <LEADER>dd :call pdv#DocumentWithSnip()<CR>
nnoremap <BUFFER> <LEADER>da :call PhpDocAll()<CR>

" SORT USE STATMENTS
nnoremap <BUFFER> <LEADER>su mugg/use<CR>V}k! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<CR>`u
vnoremap <BUFFER> <LEADER>! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<CR>

" IMPORT CONSTRUCTOR VARIABLES
nnoremap <BUFFER> <LEADER>c mcyiwj%O$this->pa = $pa;j%kOprotected $pa;`c
inoremap <BUFFER> <LEADER>c mcyiwj%O$this->pa = $pa;j%kOprotected $pa;`ca

" PHP $THIS POINTER SHORTCUT
inoremap <BUFFER> $<TAB> $this->

" PHP INSERT NAMESPACE
nnoremap <BUFFER> <LEADER>n :call Psr4NamespaceInsert()<CR>

" LIST METHODS & FUNCTIONS
nnoremap <BUFFER> <LEADER>rp :vimgrep /public function/ %<CR>:copen<CR>
nnoremap <BUFFER> <LEADER>rpp :vimgrep /protected function/ %<CR>:copen<CR>
nnoremap <BUFFER> <LEADER>rppp :vimgrep /private function/ %<CR>:copen<CR>
