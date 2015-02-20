set encoding=utf8

set background=dark

syntax on

" Set leader key
let mapleader = ","
let g:mapleader = ","

" Make W also work for saving
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))

" Set Unix as standard file type
set ffs=unix,dos,mac

" Set default key bindings to vim."
set nocompatible

" Required by Vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'chriskempson/base16-vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-speeddating'  " Increment dates with C-A/X


call vundle#end()

" Auto read when file is changed
set autoread

" Height of command bar
set cmdheight=2


" Tab specific option
set tabstop=4                   "A tab is 8 spaces
set smarttab
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple

set nowrap
" Fix backspace
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" Use auto indent and be smart about it
set autoindent
set smartindent

set number                      "Show line number"
set showmatch                   "Show matching bracket

set ignorecase                  "Ignore case when searcging"
set smartcase                   "Ignore case if search is all lower, else case-sensitive"

set hlsearch                     "Highlight search results
set incsearch                   "Incremental search

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells

set nobackup
set noswapfile                  "Care with big files, crashes"


Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
set guifont=DejaVu\ Sans\ Mono\ for\ PowerLine\ 9
set laststatus=2

" Detect file types
filetype plugin indent on

" Hide mouse when typing
set mousehide

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.       "Displays trailing whitespace"

set pastetoggle=<F2>            "Press F2 when pasting so vim doesnt try to be smart"

if has('autocmd')
    autocmd filetype python set expandtab
end


" Everytime the user issue a :w command, Vim will automatically remove all trailing whitespace before saving
autocmd BufWritePre * :%s/\s\+$//e



" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null


Bundle 'https://github.com/altercation/vim-colors-solarized.git'
" let g:solarized_termcolors=256
colorscheme solarized
