" Enable syntax highlighting
syntax enable

" Enable per-filetype settings
" This includes syntax, plugin, & indentation settings
filetype plugin indent on

" Set indentation preferences
set tabstop=4       " Show existing with 4 spaces width
set shiftwidth=4    " When indenting with '>', use 4 spaces width
set expandtab       " On pressing tab, insert 4 spaces
set softtabstop=4   " When pressing backspace, skip 4 spaces
set shiftround      " Use multiple of shift width with '>' & '<'

" Color theme
set background=dark
colorscheme hybrid_material

" Use 256 colors in terminal
set t_Co=256

" Split defaults
set splitbelow
set splitright

" Disable code folding
set nofoldenable

" No beeping
set noerrorbells
set visualbell

" Always show at least 3 lines above/below the cursor
set scrolloff=1

" No word wrapping, please
set nowrap
set textwidth=0
set wrapmargin=0
set formatoptions-=t

" Always show the status line
set laststatus=2

" Show the ruler
set ruler

" Enable search highlighting while typing
set hlsearch
set incsearch

" Ignore case when searching in lowercase
set ignorecase
set smartcase

" Highlight current line
set cursorline
