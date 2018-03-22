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
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"

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
let g:jsdoc_return_description=1

" FERRET - ENHANCED MULTI-FILE SEARCH FOR VIM
let g:FerretAutojump=2

" GUTENTAGS
let g:gutentags_ctags_tagfile='.tags'

" VIM FUGITIVE - MAKE ASYNC
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>

" VDEBUG - MULTILANGUAGE DEBUGGER CLIENT (SUPPORTS XDEBUG)
let g:vdebug_options= {
\    "port" : 9000,
\    "server" : '127.0.0.1',
\    "timeout" : 20,
\    "on_close" : 'detach',
\    "break_on_open" : 1,
\    "ide_key" : 'karl.hepler',
\    "path_maps" : {"/usr/local/bronto/repos/mail_app": "/Users/karl.hepler/bronto/mail_app"},
\    "debug_window_level" : 0,
\    "debug_file_level" : 0,
\    "debug_file" : "",
\    "watch_window_style" : 'expanded',
\    "marker_default" : '⬦',
\    "marker_closed_tree" : '▸',
\    "marker_open_tree" : '▾'
\}

" EMMET FOR HTML
" Complete tags with <leader><tab>
imap <expr> <LEADER><TAB> emmet#expandAbbrIntelligent("\<C-Y>")
