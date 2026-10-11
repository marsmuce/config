set number                    " Show line numbers
set cursorline               " Highlight the current line
set ruler                    " Show cursor position in status line
set showcmd                  " Show partial commands in status line
set showmatch                " Highlight matching brackets/parentheses

" Colors and syntax
syntax enable                " Enable syntax highlighting
set background=light         " Use light background
colorscheme shine          " Bright, vibrant color scheme

" Status line configuration
set laststatus=2            " Always show status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" Visual guides
set list                    " Show invisible characters
set listchars=tab:→\ ,trail:·,extends:>,precedes:<,nbsp:+

set autoindent              " Automatically indent new lines
set smartindent             " Smart auto-indenting
set expandtab               " Use spaces instead of tabs
set tabstop=4               " Tab width is 4 spaces
set shiftwidth=4            " Indent width is 4 spaces
set softtabstop=4           " Backspace deletes 4 spaces

" Search behavior
set ignorecase              " Case-insensitive search
set smartcase               " Case-sensitive if uppercase letters used
set incsearch               " Incremental search (highlight as you type)
set hlsearch                " Highlight all search matches

" File handling
set autoread                " Automatically reload files changed outside vim
set backup                  " Create backup files
set backupdir=~/.vim/backup " Store backups in specific directory
set directory=~/.vim/swap   " Store swap files in specific directory
set undofile                " Persistent undo across sessions
set undodir=~/.vim/undo     " Store undo files in specific directory

" Editor behavior
set backspace=indent,eol,start  " Allow backspace over everything
set scrolloff=5             " Keep 5 lines visible above/below cursor
set wrap                    " Wrap long lines
set linebreak               " Break lines at word boundaries
set mouse=a                 " Enable mouse support

" Remember cursor position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Clear search highlighting with Escape
nnoremap <Esc> :nohlsearch<CR>

set lazyredraw              " Don't redraw during macros
set ttyfast                 " Fast terminal connection
