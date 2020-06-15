" Specify the directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
" - Make sure you use single quotes!!!
call plug#begin('~/.vim/plugged')

" PALENIGHT THEME
Plug 'drewtempelmeyer/palenight.vim'

" VIM SURROUND
Plug 'tpope/vim-surround'

" GIT GUTTER
Plug 'mhinz/vim-signify'

" ULTISNIPS - THE ULTIMATE SNIPPET SOLUTION FOR VIM.
Plug 'SirVer/ultisnips'

" PASTING IN VIM WITH INDENTATION ADJUSTED TO DESTINATION CONTEXT.
Plug 'sickill/vim-pasta'

" AUTO PAIRS - INSERT OR DELETE BRACKETS, PARENS, QUOTES IN PAIR.
Plug 'jiangmiao/auto-pairs'

" Comment stuff out
Plug 'tpope/vim-commentary'

" VINEGAR.VIM - ENHANCED FILE BROWSING
Plug 'tpope/vim-vinegar'

" EMMET FOR HTML
Plug 'mattn/emmet-vim'

" REPEAT PLUGIN COMMANDS TOO
Plug 'tpope/vim-repeat'

" GIT INSIDE VIM
Plug 'tpope/vim-fugitive'

" ASYNCRUN - RUN SHELL COMMANDS IN BACKGROUND AND READ OUTPUT IN THE QUICKFIX WINDOW IN REALTIME
Plug 'skywind3000/asyncrun.vim'

" FZF - FUZZY FILE SEARCH
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" LIGHTLINE
Plug 'itchyny/lightline.vim'

" ALE - ASYNCHRONOUS LINT ENGINE
Plug 'w0rp/ale'

" VIM-POLYGLOT - A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'

" SLEUTH.VIM: HEURISTICALLY SET BUFFER OPTIONS
Plug 'tpope/vim-sleuth'

" VIM PLUGIN TO IMPROVE PROJECT SEARCHING WITH TOOLS LIKE AG AND RG
Plug 'jesseleite/vim-agriculture'

" CHANGES VIM WORKING DIRECTORY TO PROJECT ROOT (IDENTIFIED BY PRESENCE OF KNOWN DIRECTORY OR FILE).
Plug 'airblade/vim-rooter'

" COC - Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" YAML REVEALER is a vim plugin which allows you to handle the full tree structure of a Yaml key.
Plug 'Einenlum/yaml-revealer'

" indentLine : used for displaying thin vertical lines at each indentation level
Plug 'Yggdroot/indentLine'

" Initialize the plugin system
call plug#end()
