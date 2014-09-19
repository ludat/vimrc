" Normal options {{{
" Absolutely esential {{{
filetype plugin indent on
set nocompatible

" }}}
" Basic {{{
scriptencoding utf-8
set encoding=utf-8

" Sets how many lines of history VIM has to remember
set history=700

" Set <leader> to ,
let mapleader = "\<space>"

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
set ignorecase

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
set noswapfile

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
" Plug stuff {{{
call plug#begin('~/.vim/plugged')

" My plugs here:
" Make the bar prettier
Plug 'bling/vim-airline'
" Better git suport
Plug 'tpope/vim-fugitive'
" Undo and redo tree
Plug 'sjl/gundo.vim'
" Fuzzy find for files
Plug 'kien/ctrlp.vim'
" Change colorscheme faster
Plug 'flazz/vim-colorschemes'
" Check if my code is syntasticly correct
Plug 'scrooloose/syntastic'
" Fast move inside vim
Plug 'Lokaltog/vim-easymotion'
" Tags for coding (TODO no idea how to use it yet)
Plug 'majutsushi/tagbar'
" Multiple cursors support (TODO no idea how to use it yet)
Plug 'terryma/vim-multiple-cursors'
" Comment and uncomment code " gc{motion} toggle comment, gcc toggle comment for a line, gCc comment a line, <v>gc toggle comment, <v>gC comment
Plug 'tomtom/tcomment_vim'
" Tab completition when writing
Plug 'SirVer/ultisnips'
" Snippets for ultisnip
Plug 'honza/vim-snippets'
" Tabularize with :Tab /{regex} or visual select and the same
Plug 'godlygeek/tabular'
" Peer programming he he he
" Plug 'FredKSchott/CoVim'
" Tpope surround plugin for improved surround tags 
Plug 'tpope/vim-surround'
" Better start screen
Plug 'mhinz/vim-startify'
" Autocompletition for python
Plug 'davidhalter/jedi-vim'
" Check pep8 in python files
Plug 'nvie/vim-flake8'

call plug#end()

" }}}
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
" Set keybindings for jedi-vim {{{
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>v"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"
"    }}}
" }}}
" Mappings {{{

" Set Y to como se debe
nnoremap Y y$
" Clear screen clears search highlighting.
noremap <leader>h :let @/ = ""<CR>

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
