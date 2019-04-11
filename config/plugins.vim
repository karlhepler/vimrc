" GIT GUTTER
set signcolumn=yes

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

" EMMET FOR HTML & JSX
imap <expr> <LEADER><TAB> emmet#expandAbbrIntelligent("\<C-Y>")
let g:user_emmet_settings = {
\    'javascript.jsx' : {
\        'extends' : 'jsx',
\    },
\}
let g:jsx_ext_required = 0

" FERRET
" Automatically jump to the first result
let g:FerretAutojump=2

" LIGHTLINE
set laststatus=2    " Always show status line
set noshowmode      " Hide -- INSERT --
let g:lightline={
\   'colorscheme': 'palenight',
\   'active': {
\       'left': [
\           ['mode'],
\           ['gitbranch'],
\           ['filename']
\       ],
\       'right': [
\           ['lineinfo'],
\           ['percent'],
\           ['async']
\       ]
\   },
\   'component_function': {
\       'gitbranch': 'fugitive#head',
\       'filename': 'LightlineFilename',
\       'async': 'LightlineAsyncStatus',
\   }
\}

function! LightlineFilename()
    let cmd = winwidth(0) > 70 ? '%:f' : '%:t'
    let filename = expand(cmd) !=# '' ? expand(cmd) : '[No Name]'
    let modified = &modified ? '+ ' : ''
    return modified . filename
endfunction

function! LightlineAsyncStatus()
    if g:asyncrun_status == 'running'
        let status = "↹'"
    elseif g:asyncrun_status == 'success'
        let status = "✓"
    elseif g:asyncrun_status == 'failure'
        let status = "✕"
    else
        let status = "*"
    endif

    return status
endfunction

" VIM-GO GOLANG
" Run goimports on save
let g:go_fmt_command = "goimports"
" Automatically transform json tags to camelcase
let g:go_addtags_transform = "camelcase"

" VIM-EASYMOTION
nmap s <Plug>(easymotion-s)

" ALE - ASYNCHRONOUS LINT ENGINE
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_linters = {
\    'javascript': ['eslint'],
\}
