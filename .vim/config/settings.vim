" Auto reload vimrc
autocmd! bufwritepost .vimrc source %
" Auto install plugins
"execute pathogen#infect()
"
"
"filetype plugin on
"filetype plugin indent on

syntax on
set laststatus=2
" Height of the command bar
set cmdheight=2
set nocompatible
set t_Co=256
"set tw=79
set noerrorbells
set visualbell
set t_vb=
set history=700
set undolevels=700
set t_Co=256
set autoread
set wildmenu
set wildignore=*.o,*~,*.pyc
"Always show current position
set ruler
" A buffer becomes hidden when it is abandoned
set hid
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Search
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expressions turn magic on
set magic

set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab

" Colors
set encoding=utf8
" Use Unix as the standard file type
set ffs=unix,dos,mac
colo wombat256mod

set rnu
set nu

set cursorcolumn
set cursorline
set scrolloff=2
set makeprg=python\ %
set path+=**

set timeout timeoutlen=3000 ttimeoutlen=100

set background=dark
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif

set autoindent
set backspace=indent,eol,start

" Copy & paste
set pastetoggle=<F2>

" Auto foldding
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END


