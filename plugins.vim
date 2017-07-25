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

" GIT GUTTER
Plugin 'airblade/vim-gitgutter'

" ROOTER CHANGES THE WORKING DIRECTORY TO THE PROJECT ROOT WHEN YOU OPEN A FILE OR DIRECTORY.
Plugin 'airblade/vim-rooter'

" AUTOTAGS - AUTOMATICALLY UPDATE CTAGS THE RIGHT WAY
Plugin 'craigemery/vim-autotag'

" INSERT STATEMENTS AUTOMATICALLY
Plugin 'arnaud-lb/vim-php-namespace'

" ULTISNIPS - THE ULTIMATE SNIPPET SOLUTION FOR VIM.
Plugin 'SirVer/ultisnips'

" MUSTACHE TEMPLATE SYSTEM FOR VIMSCRIPT
Plugin 'tobyS/vmustache'

" PDV - PHP Documentor for VIM - 2
Plugin 'tobyS/pdv'

" VIM PHP REFACTORING TOOLBOX
Plugin 'adoy/vim-php-refactoring-toolbox'

" PASTING IN VIM WITH INDENTATION ADJUSTED TO DESTINATION CONTEXT.
Plugin 'sickill/vim-pasta'

" AUTO PAIRS - INSERT OR DELETE BRACKETS, PARENS, QUOTES IN PAIR.
Plugin 'jiangmiao/auto-pairs'

" NERD COMMENTER - COMMENT FUNCTIONS SO POWERFUL—NO COMMENT NECESSARY.
Plugin 'scrooloose/nerdcommenter'

" VINEGAR.VIM - ENHANCED FILE BROWSING
Plugin 'tpope/vim-vinegar'

" .VUE SYNTAX HIGHLIGHTING
Plugin 'posva/vim-vue'

" EMMET FOR HTML
Plugin 'mattn/emmet-vim'

" VIM JAVASCRIPT - JAVASCRIPT BUNDLE FOR VIM, THIS BUNDLE PROVIDES SYNTAX HIGHLIGHTING AND IMPROVED INDENTATION.
Plugin 'pangloss/vim-javascript'

" JSDOC.VIM - GENERATES JSDOC BLOCK COMMENTS BASED ON A FUNCTION SIGNATURE.
Plugin 'heavenshell/vim-jsdoc'

" MATCH MORE THAN JUST A SINGLE CHARACTER WITH %
Plugin 'tmhedberg/matchit'

" REPEAT PLUGIN COMMANDS TOO
Plugin 'tpope/vim-repeat'

" GIT INSIDE VIM
Plugin 'tpope/vim-fugitive'

" VERTIGO.VIM - A BETTER WAY TO MOVE VERTICALLY IN VIM
Plugin 'oldtimeguitarguy/vim-vertigo'

" PREVIEW COLOURS IN SOURCE CODE WHILE EDITING
Plugin 'ap/vim-css-color'

" TYPESCRIPT SYNTAX FILES FOR VIM
Plugin 'leafgarland/typescript-vim'

" HIGHLIGHTS JAVASCRIPT'S TEMPLATE STRINGS IN OTHER FILETYPE SYNTAX RULE
Plugin 'Quramy/vim-js-pretty-template'

" ENHANCED MULTI-FILE SEARCH FOR VIM
Plugin 'wincent/ferret'


call vundle#end()
filetype plugin indent on
