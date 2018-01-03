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

set nocompatible              
filetype off                 

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
" Bundle 'fholgado/minibufexpl.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'fatih/vim-go' 
Bundle 'posva/vim-vue'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'rstacruz/sparkup'

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
set hidden 
set modelines=0
set autowrite

" With a map leader it's possible to do extra key combinations
" like <leader>s saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>s :w!<cr>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

"fast edit to vimrc
nmap <leader>ev :e ~/.incorrect-vim/vimrc<cr>

" reselect the text just pasted
nnoremap <leader>v V`]

"Map Copy & Paste to system clipboard
vnoremap <C-c> "+y
vnoremap <C-v> "+p

" Quicker escapingfrom normal mode
inoremap jj <ESC>

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
set softtabstop=4
set expandtab
set smarttab
set number 
set autoindent
set scrolloff=3


" UTF-8 encoding
set encoding=utf8 

" Search options
nnoremap / /\v
vnoremap / /\v
set smartcase
set gdefault
set incsearch
set showmatch
set ignorecase

set hlsearch "Highlight search things
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Show autocomplete menus
set wildmenu
set wildmode=list:longest

" Show editing mode
set showmode
set noerrorbells
set visualbell
set showcmd
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" long lines hanling
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" disable arrow keys, to force the abit of using hjkl for movement
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" split windows mapping
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

""""""""""""""""""""""""""""""""""""""""""
" Airline plugin
""""""""""""""""""""""""""""""""""""""""""

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" buffer navigation
nmap <leader>l :bn<cr>
nmap <leader>k :bp<cr>
nmap <leader>d :bd<cr>

""""""""""""""""""""""""""""""""""""""""""
" CtrlP  plugin
""""""""""""""""""""""""""""""""""""""""""

" mapping for opening a file on disk
map <leader>p :CtrlP<cr>

" Mapping for findind files, buffer, or MRU
map <leader>f :CtrlPMixed<cr>

" search for an open buffer
map <leader>fb :CtrlPBuffer<cr>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|\v[\/]node_modules$|\v[\/]test$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'example_some_bad_symbolic_links',
  \ }


" To enable the saving and restoring of screen positions.
 let g:screen_size_restore_pos = 1
"
" To save and restore screen for each Vim instance.
" This is useful if you routinely run more than one Vim instance.
" For all Vim to use the same settings, change this to 0.
let g:screen_size_by_vim_instance = 0



""""""""""""""""""""""""""""""""""""""""""
" NERDTree  plugin
""""""""""""""""""""""""""""""""""""""""""
map <leader>n :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""
" Sparkup  plugin
""""""""""""""""""""""""""""""""""""""""""
augroup sparkup_types
  " Remove ALL autocommands of the current group.
  autocmd!
  " Add sparkup to new filetypes
  autocmd FileType vue,php runtime! ftplugin/html/sparkup.vim
augroup END

""""""""""""""""""""""""""""""""""""""""""
" Vim-go  plugin
""""""""""""""""""""""""""""""""""""""""""
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>c :cclose<CR>

let g:go_fmt_command = "goimports"

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t :GoTest<cr>
autocmd FileType go nmap <leader>g :GoTestCompile<cr>
autocmd FileType go nmap <leader>a :GoAlternate<cr>

""""""""""""""""""""""""""""""""""""""""""
" UltiSnip plugin
""""""""""""""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
