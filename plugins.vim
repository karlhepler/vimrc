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

" CTRLP-FUNKY - A SUPER SIMPLE FUNCTION NAVIGATOR FOR CTRLP.VIM.  FOR LAZY PEOPLE WHO CANNOT WAIT UNTIL CTAGS FINISHES.
Plugin 'tacahiroy/ctrlp-funky'

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

" MULTI-FILE SEARCH & REPLACE
Plugin 'skwp/greplace.vim'

" .VUE SYNTAX HIGHLIGHTING
Plugin 'posva/vim-vue'

" QFENTER - OPEN QUICKFIX IN SPLITS ETC
Plugin 'yssl/QFEnter'

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

" QUICKFIX TOGGLE
Plugin 'milkypostman/vim-togglelist'

" GIT INSIDE VIM
Plugin 'tpope/vim-fugitive'

" SNEAK.VIM - JUMPS TO ANY LOCATION SPECIFIED BY TWO CHARACTERS
Plugin 'justinmk/vim-sneak'

" VERTIGO.VIM - A BETTER WAY TO MOVE VERTICALLY IN VIM
Plugin 'prendradjaja/vim-vertigo'


call vundle#end()
filetype plugin indent on
