filetype off
" Specify the directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
" - Make sure you use single quotes!!!
call plug#begin('~/.vim/plugged')

" PALENIGHT THEME
Plug 'drewtempelmeyer/palenight.vim'

" VIM SURROUND
Plug 'tpope/vim-surround'

" GIT GUTTER
Plug 'airblade/vim-gitgutter'

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

" MATCH MORE THAN JUST A SINGLE CHARACTER WITH %
Plug 'andymass/vim-matchup'

" REPEAT PLUGIN COMMANDS TOO
Plug 'tpope/vim-repeat'

" GIT INSIDE VIM
Plug 'tpope/vim-fugitive'

" GUTENTAGS - REGENERATE TAG FILES AS YOU WORK WHILE STAYING COMPLETELY OUT OF YOUR WAY.
Plug 'ludovicchabant/vim-gutentags'

" ASYNCRUN - RUN SHELL COMMANDS IN BACKGROUND AND READ OUTPUT IN THE QUICKFIX WINDOW IN REALTIME
Plug 'skywind3000/asyncrun.vim'

" FZF - FUZZY FILE SEARCH
Plug '/usr/local/opt/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" LIGHTLINE
Plug 'itchyny/lightline.vim'

" GO LANG
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" FERRET SEARCHING
Plug 'wincent/ferret'

" ALE - ASYNCHRONOUS LINT ENGINE
Plug 'w0rp/ale'

" VIM-POLYGLOT - A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'

" Initialize the plugin system
call plug#end()
filetype plugin indent on
