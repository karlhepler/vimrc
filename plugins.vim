filetype off
" Specify the directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
" - Make sure you use single quotes!!!
call plug#begin('~/.vim/plugged')

" MATERIAL THEME
Plug 'kristijanhusak/vim-hybrid-material'

" VIM SURROUND
Plug 'tpope/vim-surround'

" GIT GUTTER
Plug 'airblade/vim-gitgutter'

" INSERT STATEMENTS AUTOMATICALLY
Plug 'arnaud-lb/vim-php-namespace'

" ULTISNIPS - THE ULTIMATE SNIPPET SOLUTION FOR VIM.
Plug 'SirVer/ultisnips'

" MUSTACHE TEMPLATE SYSTEM FOR VIMSCRIPT
Plug 'tobyS/vmustache'

" PDV - PHP Documentor for VIM - 2
Plug 'tobyS/pdv'

" PASTING IN VIM WITH INDENTATION ADJUSTED TO DESTINATION CONTEXT.
Plug 'sickill/vim-pasta'

" AUTO PAIRS - INSERT OR DELETE BRACKETS, PARENS, QUOTES IN PAIR.
Plug 'jiangmiao/auto-pairs'

" NERD COMMENTER - COMMENT FUNCTIONS SO POWERFUL—NO COMMENT NECESSARY.
Plug 'scrooloose/nerdcommenter'

" VINEGAR.VIM - ENHANCED FILE BROWSING
Plug 'tpope/vim-vinegar'

" EMMET FOR HTML
Plug 'mattn/emmet-vim'

" VIM JAVASCRIPT - JAVASCRIPT BUNDLE FOR VIM, THIS BUNDLE PROVIDES SYNTAX HIGHLIGHTING AND IMPROVED INDENTATION.
Plug 'pangloss/vim-javascript'

" JSDOC.VIM - GENERATES JSDOC BLOCK COMMENTS BASED ON A FUNCTION SIGNATURE.
Plug 'heavenshell/vim-jsdoc'

" MATCH MORE THAN JUST A SINGLE CHARACTER WITH %
Plug 'tmhedberg/matchit'

" REPEAT PLUGIN COMMANDS TOO
Plug 'tpope/vim-repeat'

" GIT INSIDE VIM
Plug 'tpope/vim-fugitive'

" PREVIEW COLOURS IN SOURCE CODE WHILE EDITING
Plug 'ap/vim-css-color'

" GUTENTAGS - REGENERATE TAG FILES AS YOU WORK WHILE STAYING COMPLETELY OUT OF YOUR WAY.
Plug 'ludovicchabant/vim-gutentags'

" ASYNCRUN - RUN SHELL COMMANDS IN BACKGROUND AND READ OUTPUT IN THE QUICKFIX WINDOW IN REALTIME
Plug 'skywind3000/asyncrun.vim'

" VIM-JSX - SYNTAX HIGHLIGHTING AND INDENTING FOR JSX
Plug 'mxw/vim-jsx'

" VDEBUG - MULTILANGUAGE DEBUGGER CLIENT (SUPPORTS XDEBUG)
Plug 'vim-vdebug/vdebug'

" TYPESCRIPT SYNTAX FOR VIM
Plug 'leafgarland/typescript-vim'

" FZF - FUZZY FILE SEARCH
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" LIGHTLINE
Plug 'itchyny/lightline.vim'

" GO LANG
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" FERRET SEARCHING
Plug 'wincent/ferret'

" CLOSETAG - AUTOMATICALLY CLOSE HTML TAGS
Plug 'alvan/vim-closetag'

" VIM-EASYMOTION
Plug 'easymotion/vim-easymotion'

" VIM PRETTIER
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Initialze the plugin system
call plug#end()
filetype plugin indent on
