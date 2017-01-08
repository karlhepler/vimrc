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

" EMMET
Plugin 'mattn/emmet-vim'

" ROOTER CHANGES THE WORKING DIRECTORY TO THE PROJECT ROOT WHEN YOU OPEN A FILE OR DIRECTORY.
Plugin 'airblade/vim-rooter'
let g:rooter_patterns=['.git/']

" AUTOTAGS - AUTOMATICALLY UPDATE CTAGS THE RIGHT WAY
Plugin 'craigemery/vim-autotag'
let g:autotagTagsFile=".tags"

" INSERT SORTED USE STATEMENTS AUTOMATICALLY
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
    call pdv#DocumentWithSnip()
endfunc

" PASTING IN VIM WITH INDENTATION ADJUSTED TO DESTINATION CONTEXT.
Plugin 'sickill/vim-pasta'

" AUTO PAIRS - INSERT OR DELETE BRACKETS, PARENS, QUOTES IN PAIR.
Plugin 'jiangmiao/auto-pairs'

" NERD COMMENTER - COMMENT FUNCTIONS SO POWERFUL—NO COMMENT NECESSARY.
Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1


call vundle#end()
