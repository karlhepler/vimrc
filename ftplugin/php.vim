" NAMESPACE USE
inoremap <LEADER>u <ESC>:call IPhpInsertUse()<CR>
noremap <LEADER>u :call PhpInsertUse()<CR>

" NAMESPACE INCLUDE
inoremap <LEADER>i <ESC>viw<ESC>bi\<ESC>l:call IPhpExpandClass()<CR>
noremap <LEADER>i viw<ESC>bi\<ESC>l:call PhpExpandClass()<CR>

" PHP REFACTORING
nnoremap <LEADER>rv :call PhpRenameLocalVariable()<CR>
nnoremap <LEADER>rp :call PhpRenameClassVariable()<CR>
nnoremap <LEADER>rm :call PhpRenameMethod()<CR>
nnoremap <LEADER>ep :call PhpExtractClassProperty()<CR>
vnoremap <LEADER>em :call PhpExtractMethod()<CR>
nnoremap <LEADER>np :call PhpCreateProperty()<CR>
nnoremap <LEADER>du :call PhpDetectUnusedUseStatements()<CR>
vnoremap <LEADER>== :call PhpAlignAssigns()<CR>

" PHP DOC BLOCKS
nnoremap <LEADER>dd :call pdv#DocumentWithSnip()<CR>
nnoremap <LEADER>da :call PhpDocAll()<CR>

" SORT USE STATMENTS
nnoremap <LEADER>su mugg/use<CR>V}k! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<CR>`u
vnoremap <LEADER>! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<CR>

" IMPORT CONSTRUCTOR VARIABLES
nnoremap <LEADER>c mcyiwj%O$this->pa = $pa;j%kOprotected $pa;`c
inoremap <LEADER>c mcyiwj%O$this->pa = $pa;j%kOprotected $pa;`ca

" PHP $THIS POINTER SHORTCUT
inoremap $<TAB> $this->

" PHP INSERT NAMESPACE
nnoremap <LEADER>n :call Psr4NamespaceInsert()<CR>

" LIST METHODS & FUNCTIONS
nnoremap <LEADER>rp :vimgrep /public function/ %<CR>:copen<CR>
nnoremap <LEADER>rpp :vimgrep /protected function/ %<CR>:copen<CR>
nnoremap <LEADER>rppp :vimgrep /private function/ %<CR>:copen<CR>
