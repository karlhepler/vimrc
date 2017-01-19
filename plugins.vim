filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" LET VUNDLE MANAGE ITSELF
Plugin 'VundleVim/Vundle.vim'

" MATERIAL THEME
Plugin 'kristijanhusak/vim-hybrid-material'

" VIM SURROUND
Plugin 'tpope/vim-surround'

" CTRL+P FUZZY FILE SEARCH
Plugin 'kien/ctrlp.vim'
let g:ctrlp_match_window='top,order:ttb'
let g:ctrlp_custom_ignore={'dir':'\v(node_modules|vendor|bower_components)$'}
if executable('ag')
    let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching=0
endif

" GIT GUTTER
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_sign_column_always=1

" ROOTER CHANGES THE WORKING DIRECTORY TO THE PROJECT ROOT WHEN YOU OPEN A FILE OR DIRECTORY.
Plugin 'airblade/vim-rooter'
let g:rooter_patterns=['.git/']

" AUTOTAGS - AUTOMATICALLY UPDATE CTAGS THE RIGHT WAY
Plugin 'craigemery/vim-autotag'
let g:autotagTagsFile=".tags"

" INSERT STATEMENTS AUTOMATICALLY
Plugin 'arnaud-lb/vim-php-namespace'
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
Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"

" MUSTACHE TEMPLATE SYSTEM FOR VIMSCRIPT
Plugin 'tobyS/vmustache'

" PDV - PHP Documentor for VIM - 2
Plugin 'tobyS/pdv'
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

" VIM PHP REFACTORING TOOLBOX
Plugin 'adoy/vim-php-refactoring-toolbox'
let g:vim_php_refactoring_use_default_mapping=0
let g:vim_php_refactoring_default_property_visibility='protected'
let g:vim_php_refactoring_default_method_visibility='protected'
" This requires PhpDoc() to exist, but it doesn't anymore
func! PhpDoc()
    let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
    call pdv#DocumentCurrentLine()
    let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
endfunc

" PASTING IN VIM WITH INDENTATION ADJUSTED TO DESTINATION CONTEXT.
Plugin 'sickill/vim-pasta'

" AUTO PAIRS - INSERT OR DELETE BRACKETS, PARENS, QUOTES IN PAIR.
Plugin 'jiangmiao/auto-pairs'

" NERD COMMENTER - COMMENT FUNCTIONS SO POWERFUL—NO COMMENT NECESSARY.
Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims=1
let g:NERDCommentEmptyLines=1
let g:NERDCreateDefaultMappings=0

" VINEGAR.VIM - ENHANCED FILE BROWSING
Plugin 'tpope/vim-vinegar'
" Hide dot files - gh to toggle
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" MULTI-FILE SEARCH & REPLACE
Plugin 'skwp/greplace.vim'
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

" .VUE SYNTAX HIGHLIGHTING
Plugin 'posva/vim-vue'

" PERFORM ALL YOUR VIM INSERT MODE COMPLETIONS WITH TAB
Plugin 'ervandew/supertab'

" QFENTER - OPEN QUICKFIX IN SPLITS ETC
Plugin 'yssl/QFEnter'
let g:qfenter_vopen_map = ['<C-v>']
let g:qfenter_hopen_map = ['<C-CR>', '<C-s>', '<C-x>']
let g:qfenter_topen_map = ['<C-t>']

" EMMET FOR HTML
Plugin 'mattn/emmet-vim'
imap <expr> <leader><tab> emmet#expandAbbrIntelligent("\<leader>\<tab>")

" VIM JAVASCRIPT - JAVASCRIPT BUNDLE FOR VIM, THIS BUNDLE PROVIDES SYNTAX HIGHLIGHTING AND IMPROVED INDENTATION.
Plugin 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc=1

" JSDOC.VIM - GENERATES JSDOC BLOCK COMMENTS BASED ON A FUNCTION SIGNATURE.
Plugin 'heavenshell/vim-jsdoc'
let g:jsdoc_enable_es6=1
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_return_description=0

" MATCH MORE THAN JUST A SINGLE CHARACTER
Plugin 'tmhedberg/matchit'

" REPEAT PLUGIN COMMANDS TOO
Plugin 'tpope/vim-repeat'

"TAG LIST
Plugin 'vim-scripts/taglist.vim'
let Tlist_Enable_Fold_Column=0
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Inc_Winwidth=0
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=50
let Tlist_Display_Tag_Scope=0
let Tlist_Display_Prototype=1
let Tlist_Close_On_Select=1
let Tlist_Compact_Format=1

call vundle#end()
filetype plugin indent on
