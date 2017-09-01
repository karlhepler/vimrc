" CTRL+P FUZZY FILE SEARCH
let g:ctrlp_match_window='top,order:ttb'
let g:ctrlp_custom_ignore={'dir':'\v(node_modules|vendor|bower_components|builds)$'}
if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_use_caching = 0
endif
noremap <c-b> <esc>:CtrlPBufTag<cr>

" GIT GUTTER
set signcolumn=yes

" ROOTER CHANGES THE WORKING DIRECTORY TO THE PROJECT ROOT WHEN YOU OPEN A FILE OR DIRECTORY.
let g:rooter_patterns=['.git/']
let g:rooter_silent_chdir=1

" AUTOTAGS - AUTOMATICALLY UPDATE CTAGS THE RIGHT WAY
let g:autotagTagsFile=".tags"

" INSERT STATEMENTS AUTOMATICALLY
" Automatically adds the corresponding use statement for the name under the cursor.
function! IPhpInsertUse()
call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
" Expands the name under the cursor to its fully qualified name.
function! IPhpExpandClass()
call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction

" ULTISNIPS - THE ULTIMATE SNIPPET SOLUTION FOR VIM.
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"

" PDV - PHP Documentor for VIM - 2
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

" VIM PHP REFACTORING TOOLBOX
let g:vim_php_refactoring_use_default_mapping=0
let g:vim_php_refactoring_default_property_visibility='protected'
let g:vim_php_refactoring_default_method_visibility='protected'
" This requires PhpDoc() to exist, but it doesn't anymore
func! PhpDoc()
    let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
    call pdv#DocumentCurrentLine()
    let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
endfunc

" NERD COMMENTER - COMMENT FUNCTIONS SO POWERFUL—NO COMMENT NECESSARY.
let g:NERDSpaceDelims=1

" VINEGAR.VIM - ENHANCED FILE BROWSING
" Hide dot files - gh to toggle
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" VIM JAVASCRIPT - JAVASCRIPT BUNDLE FOR VIM, THIS BUNDLE PROVIDES SYNTAX HIGHLIGHTING AND IMPROVED INDENTATION.
let g:javascript_plugin_jsdoc=1

" JSDOC.VIM - GENERATES JSDOC BLOCK COMMENTS BASED ON A FUNCTION SIGNATURE.
let g:jsdoc_enable_es6=1
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_return_description=0

" VERTIGO.VIM MAPPINGS
nnoremap <silent> <Space>j :<C-U>VertigoDown n<CR>
vnoremap <silent> <Space>j :<C-U>VertigoDown v<CR>
onoremap <silent> <Space>j :<C-U>VertigoDown o<CR>
nnoremap <silent> <Space>k :<C-U>VertigoUp n<CR>
vnoremap <silent> <Space>k :<C-U>VertigoUp v<CR>
onoremap <silent> <Space>k :<C-U>VertigoUp o<CR>

" FERRET - ENHANCED MULTI-FILE SEARCH FOR VIM
let g:FerretAutojump=2
