" JAVASCRIPT DOCS
nnoremap <buffer> <LEADER>dd :JsDoc<CR>

" SORT IMPORT STATEMENTS
nnoremap <buffer> <LEADER>su mugg?import<CR>NV}k! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<CR>:nohl<CR>`u
