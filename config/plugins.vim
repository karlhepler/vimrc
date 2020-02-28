" ULTISNIPS - THE ULTIMATE SNIPPET SOLUTION FOR VIM.
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"

" PDV - PHP Documentor for VIM - 2
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"

" VINEGAR.VIM - ENHANCED FILE BROWSING
" Hide dot files - gh to toggle
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
" Remove directories with stuff in them
let g:netrw_localrmdir='rm -r'

" VIM JAVASCRIPT - JAVASCRIPT BUNDLE FOR VIM, THIS BUNDLE PROVIDES SYNTAX HIGHLIGHTING AND IMPROVED INDENTATION.
let g:javascript_plugin_jsdoc=1

" JSDOC.VIM - GENERATES JSDOC BLOCK COMMENTS BASED ON A FUNCTION SIGNATURE.
let g:jsdoc_enable_es6=1
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_return_description=1

" GUTENTAGS
let g:gutentags_ctags_tagfile='.tags'
let g:gutentags_exclude_filetypes=['typescript', 'typescriptcommon', 'typescriptreact']

" VIM FUGITIVE - MAKE ASYNC
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>

" EMMET FOR HTML & JSX
let g:user_emmet_settings = {
\    'javascript.jsx' : {
\        'extends' : 'jsx',
\    },
\}
let g:jsx_ext_required = 0

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
        let status = "↹"
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

" ALE - ASYNCHRONOUS LINT ENGINE
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint'],
\}
let g:ale_fixers = ['prettier']

" CTRL-A CTRL-Q to select all and build quickfix list
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
\ 'ctrl-q': function('s:build_quickfix_list'),
\ 'ctrl-t': 'tab split',
\ 'ctrl-s': 'split',
\ 'ctrl-v': 'vsplit'
\}

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

" STOP VIM-ROOTER ECHOING THE PROJECT DIRECTORY
let g:rooter_silent_chdir = 1
