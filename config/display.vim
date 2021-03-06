" ENABLE SYNTAX HIGHLIGHTING
syntax enable

" ENABLE PER-FILETYPE SETTINGS
" THIS INCLUDES SYNTAX, PLUGIN, & INDENTATION SETTINGS
filetype plugin indent on

set tabstop=4       " SHOW EXISTING WITH 4 SPACES WIDTH
set shiftwidth=4    " WHEN INDENTING WITH '>', USE 4 SPACES WIDTH
set expandtab       " ON PRESSING TAB, INSERT 4 SPACES
set softtabstop=4   " WHEN PRESSING BACKSPACE, SKIP 4 SPACES
set shiftround      " USE MULTIPLE OF SHIFT WIDTH WITH '>' & '<'

set autoindent

" COLOR THEME
set background=dark
colorscheme palenight

" USE 256/TRUE COLORS IN TERMINAL
set termguicolors

" SPLIT DEFAULTS
set splitbelow
set splitright

" DISABLE CODE FOLDING
set nofoldenable

" NO BEEPING
set noerrorbells
set visualbell

" ALWAYS SHOW AT LEAST 1 LINE ABOVE/BELOW THE CURSOR
set scrolloff=1

" NO WORD WRAPPING, PLEASE
set nowrap
set textwidth=0
set wrapmargin=0
set formatoptions-=t

" SHOW THE RULER
set ruler

" ENABLE SEARCH HIGHLIGHTING WHILE TYPING
set hlsearch
set incsearch

" IGNORE CASE WHEN SEARCHING IN LOWERCASE
set ignorecase
set smartcase

" DON'T HIGHLIGHT CURRENT LINE (SPEED IMPROVEMENT)
set nocursorline

" GO AHEAD AND ENABLE MOUSE SUPPORT. FINE.
set mouse=a

" ENABLE OMNIFUNC SYNTAX COMPLETION
set omnifunc=syntaxcomplete#Complete

" MAKE BACKSPACE WORK... WHY?
set backspace=2

" DISABLE SEARCHING TAGS WITH AUTOCOMPLETE
set cpt-=t

" When a file has been detected to have been changed outside of Vim
" and it has not been changed inside of Vim, automatically read it again.
set autoread

" more characters will be sent to the screen for redrawing
set ttyfast

"time waited for key press(es) to complete. It makes for a faster key response
set ttimeout
set ttimeoutlen=50

"a better menu in command mode
set wildmenu
set wildmode=longest:full,full

" Always show sign column
set signcolumn=yes

" Tame horizontal scroll
set sidescroll=1

" No double spaces after periods when joining lines
set nojoinspaces

" Better vimdiff
if has("patch-8.1.0360")
    set diffopt=filler,internal,algorithm:histogram,indent-heuristic
endif
