" JAVASCRIPT DOCS
nnoremap <buffer> <LEADER>dd :JsDoc<CR>

" FANCY BLOCK COMMENTS
inoremap <buffer> <LEADER>c<CR> ^v$Uv$hc4i/hi50i-44hR " i

" SORT IMPORT STATEMENTS
nnoremap <buffer> <silent> <LEADER>su mugg?import<CR>NV}k! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<CR>:nohl<CR>`u
