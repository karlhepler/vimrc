" JAVASCRIPT DOCS
nnoremap <buffer> <LEADER>dd :JsDoc<CR>

" FANCY BLOCK COMMENTS
inoremap <buffer> <LEADER>c<CR> VUI// A //yypyypkkv$r/jjv$r/occ

" SORT IMPORT STATEMENTS
nnoremap <buffer> <silent> <LEADER>su mugg?import<CR>NV}k! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<CR>:nohl<CR>`u
