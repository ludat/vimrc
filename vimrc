" Sets how many lines of history VIM has to remember
set history=700

" Set <leader> to ,
let mapleader = ","

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set number lines
set number

" Set my own listchars to print weird characters
set listchars=eol:$,tab:>-,trail:-,trail:·     

" Start pathogen
execute pathogen#infect()
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'

" Set 7 lines to the cursor - when moving vertically using j/k
" set scrolloff=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" A buffer becomes hidden when it is abandoned
set hidden

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
"set lazyredraw

" For regular expressions turn magic on
set magic

"Turn mouse on
set mouse=a 

" Show matching brackets when text indicator is over them
set showmatch

" Highlight all search results
set hlsearch

" How many tenths of a second to blink when matching brackets
set matchtime=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
" set tw=500

" Smart way to move between windows
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l

" Set the status bar to be seen
set laststatus=2

" Set buffer fun!
" set wildchar=<Tab> wildmenu wildmode=full
" set wildcharm=<C-Z>
" nnoremap <F10> :b <C-Z>

" clear screen clears search highlighting.
noremap <C-H> :set hlsearch!<CR>

" Save with CTRL-S
noremap <C-S> :w<CR>

" Tabs navigation
nmap <leader>b :bp<CR>
nmap <leader>n :bn<CR>
