""""""""""""""""""""""""""""""""""""""""""
" Incorrect Vimrc file
"
" Maintainer: Gianluigi Rubino - http://incorrect-code.org
" Reference: inspired by the great book at http://www.swaroopch.com
"            and by the vimrc published at http://amix.dk
" 
" What I'm trying to do is to keep a minimal set of plugins and keep it
" growing slowly, in order to fully master each one at a time
"  

""""""""""""""""""""""""""""""""""""""""""
" Setup Vundle to keep a clean enviroment 
""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.incorrect-vim/bundle/vundle/
"call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
let path = '~/.incorrect-vim/bundle'
call vundle#begin(path)
"
" " let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
"
" " The following are examples of different formats supported.
" " Keep bundle commands between here and filetype plugin indent on.
" " scripts on GitHub repos
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'junegunn/goyo.vim'
Bundle 'amix/vim-zenroom2'

"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'tpope/vim-rails.git'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" " scripts from http://vim-scripts.org/vim/scripts.html
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" " scripts not on GitHub
"Bundle 'git://git.wincent.com/command-t.git'

" YouCompleteME
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'scrooloose/syntastic'
" " git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///home/gmarik/path/to/plugin'
" " ...
"
call vundle#end()
filetype plugin indent on     " required
" " To ignore plugin indent changes, instead use:
filetype plugin on
" "
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.
" " Put your stuff after this line
"


""""""""""""""""""""""""""""""""""""""""""
" General settings
""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

"fast edit to vimrc
nmap <leader>v :e ~/.incorrect-vim/vimrc<cr>

"Map Copy & Paste to system clipboard
vnoremap <C-c> "+y
vnoremap <C-v> "+p

""""""""""""""""""""""""""""""""""""""""""
" Color and Fonts settings
""""""""""""""""""""""""""""""""""""""""""
 
" sets colorscheme
set background=dark
set t_Co=16
set background=dark
let g:solarized_termcolors=16
let g:solarized_termtrans = 1
colorscheme solarized

if has("gui_running")
    "Hide toolbar and menu in GUI mode
    set guioptions -=T
    set guioptions -=m
    set guifont=Inconsolata\ Medium\ 8
endif


""""""""""""""""""""""""""""""""""""""""""
" Indentation, tabs, text editing options
""""""""""""""""""""""""""""""""""""""""""
syntax on
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set number 

" UTF-8 encoding
set encoding=utf8 

" Search options
set incsearch
set ignorecase

set hlsearch "Highlight search things


" Show autocomplete menus
set wildmenu

" Show editing mode
set showmode

set noerrorbells
set novisualbell


""""""""""""""""""""""""""""""""""""""""""
" MinBufExplorer plugin
""""""""""""""""""""""""""""""""""""""""""

map <leader>e :MBEOpen<cr> 
map <leader>c :MBEClose<cr> 
map <leader>t :MBEToggle<cr> 

" buffer navigation
nmap <leader>. :MBEbn<cr>
nmap <leader>m :MBEbp<cr>
nmap <leader>d :MBEbd<cr>
nmap <leader>f :MBEFocus<cr>

""""""""""""""""""""""""""""""""""""""""""
" CtrlP  plugin
""""""""""""""""""""""""""""""""""""""""""

map <leader>p :CtrlP<cr> 


" To enable the saving and restoring of screen positions.
 let g:screen_size_restore_pos = 1
"
" To save and restore screen for each Vim instance.
" This is useful if you routinely run more than one Vim instance.
" For all Vim to use the same settings, change this to 0.
let g:screen_size_by_vim_instance = 0




