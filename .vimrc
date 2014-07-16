scriptencoding utf-8
set encoding=utf-8
" Sets how many lines of history VIM has to remember
set history=700

" Set <leader> to ,
let mapleader = ","

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set cursor column and line
set cursorcolumn
set cursorline

" Set number lines
set number
set relativenumber

" Set my own listchars to print weird characters
set listchars=eol:$,tab:>-,trail:·     

if has('vim_starting')
    set nocompatible

    " Required
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
" Required
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'terryma/vim-multiple-cursors'
" You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Config vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'

" Some configs for ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

" Set 7 lines to the cursor - when moving vertically using j/k
" set scrolloff=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" A buffer becomes hidden when it is abandoned
set hidden

" When searching try to be smart about cases 
set smartcase

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
"set lazyredraw

" For regular expressions turn magic on
set magic

"Turn mouse on only for visual mode (a=all modes, v=visual mode, i=insert mode)
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

" Set a colorscheme
colorscheme 256-jungle

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup


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
noremap <leader>h :set hlsearch!<CR>

" Save with CTRL-S
noremap <C-S> :w<CR>

" Tabs navigation
nmap <silent> <leader>b :bprevious<CR>
nmap <silent> <leader>n :bnext<CR>
map <C-S-Tab> :bprevious<CR>
map <C-Tab> :bnext<CR>

imap jk <Esc>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
