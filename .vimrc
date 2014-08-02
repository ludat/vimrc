" Preamble {{{
filetype plugin indent on
set nocompatible

if has('vim_starting')
    " Required
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
" Required
call neobundle#begin(expand('~/.vim/bundle/'))

" }}}
" Normal options {{{
" Basic {{{
scriptencoding utf-8
set encoding=utf-8

" Sets how many lines of history VIM has to remember
set history=700

" Set <leader> to ,
let mapleader = ","

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

" Enable syntax highlighting
syntax on

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
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

" Show command
set showcmd
" }}}
" folding stuff {{{
" set foldmethod marker
set foldmethod=marker
" }}}
" }}}
" Confuration for plugins {{{

" Let NeoBundle manage NeoBundle
" Required
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Make the bar prettier
NeoBundle 'bling/vim-airline'
" Better git suport
NeoBundle 'tpope/vim-fugitive'
" Undo and redo tree
NeoBundle 'sjl/gundo.vim'
" Fuzzy find for files
NeoBundle 'kien/ctrlp.vim'
" Change colorscheme faster
NeoBundle 'flazz/vim-colorschemes'
" Check if my code is syntasticly correct
NeoBundle 'scrooloose/syntastic'
" Fast move inside vim
NeoBundle 'Lokaltog/vim-easymotion'
" Tags for coding (TODO no idea how to use it yet)
NeoBundle 'majutsushi/tagbar'
" Multiple cursors support (TODO no idea how to use it yet)
NeoBundle 'terryma/vim-multiple-cursors'
" Comment and uncomment code " gc{motion} toggle comment, gcc toggle comment for a line, gCc comment a line, <v>gc toggle comment, <v>gC comment
NeoBundle 'tomtom/tcomment_vim'
" Tab completition when writing
NeoBundle 'SirVer/ultisnips'
" Snippets for ultisnip
NeoBundle 'honza/vim-snippets'
" Tabularize with :Tab /{regex} or visual select and the same
NeoBundle 'godlygeek/tabular'
" Peer programming he he he
" NeoBundle 'FredKSchott/CoVim'
" Automatic completition for C, C++ and Python
NeoBundle 'Valloric/YouCompleteMe'
" Tpope surround plugin for improved surround tags 
NeoBundle 'tpope/vim-surround'
" Better start screen
NeoBundle 'mhinz/vim-startify'
" You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" Config vim-airline {{{
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'
" }}}

" Some configs for ctrlp.vim {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']
" }}}

" Make ultisnips work with YCM {{{
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" }}}

" Set a colorscheme {{{
colorscheme Monokai
"    }}}
" }}}
" Mappings {{{

" Set Y to como se debe
nnoremap Y y$
" Clear screen clears search highlighting.
noremap <leader>h :set hlsearch!<CR>

" Save with CTRL-S
noremap <C-S> :w<CR>

" Tabs navigation
nmap <silent> <leader>b :bprevious<CR>
nmap <silent> <leader>n :bnext<CR>
map <C-S-Tab> :bprevious<CR>
map <C-Tab> :bnext<CR>

" Replace Esc for jk
imap jk <Esc>

" Train myself
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Forgot to sudo
cmap w!! w !sudo tee % >/dev/null
" }}}
