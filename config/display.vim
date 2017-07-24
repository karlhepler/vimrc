" ENABLE SYNTAX HIGHLIGHTING
syntax enable

" ENABLE PER-FILETYPE SETTINGS
" THIS INCLUDES SYNTAX, PLUGIN, & INDENTATION SETTINGS
filetype plugin indent on

" SET INDENTATION PREFERENCES
set tabstop=4       " SHOW EXISTING WITH 4 SPACES WIDTH
set shiftwidth=4    " WHEN INDENTING WITH '>', USE 4 SPACES WIDTH
set expandtab       " ON PRESSING TAB, INSERT 4 SPACES
set softtabstop=4   " WHEN PRESSING BACKSPACE, SKIP 4 SPACES
set shiftround      " USE MULTIPLE OF SHIFT WIDTH WITH '>' & '<'

" COLOR THEME
set background=dark
colorscheme hybrid_material

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

" ALWAYS SHOW THE STATUS LINE
set laststatus=2                            " ALWAYS SHOW THE STATUS LINE
set statusline=                             " CLEAR THE STATUS LINE
set statusline+=\ %{substitute(fugitive#statusline(),'\[Git\\(.*\\)\\]','\\\=submatch(1)','')}  " GIT BRANCH
set statusline+=\ %h%w%m%r                  " FILE STATUS
set statusline+=\ %f                        " FILE NAME
set statusline+=%=                          " EVERYTHING PAST HERE IS ON THE RIGHT
set statusline+=%(%l,%c%V\ %=\ %P%)         " LINE, CHAR, FILE POS
set statusline+=\                           " RIGHT PADDING

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

" DISABLE NEOVIM FANCY CURSOR
if (has("nvim"))
    set guicursor=
endif

" MAKE BACKSPACE WORK
set backspace=2
