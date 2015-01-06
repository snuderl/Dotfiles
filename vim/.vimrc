set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'


call vundle#end()


" Tab specific option
set tabstop=8                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple
set nowrap
set backspace=indent,eol,start
set autoindent
set copyindent
set number                      "Show line number"
set showmatch
set ignorecase                  "Ignore case when searcging"
set smartcase                   "Ignore case if search is all lower, else case-sensitive"
set smarttab
set hlsearch
set incsearch

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


filetype plugin indent on

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.       "Displays trailing whitespace"

set pastetoggle=<F2>            "Press F2 when pasting so vim doesnt try to be smart"

if has('autocmd')
    autocmd filetype python set expandtab

end





" Python-mode
" " Activate rope
" " Keys:
" " K             Show python docs
" " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator
" modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator
" modes)
