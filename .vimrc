" Auto reload vimrc
autocmd! bufwritepost .vimrc source %
" Auto install plugins
execute pathogen#infect()


filetype plugin on
filetype plugin indent on

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

" Show matching brackets when text indicator is over them
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
colo darkgit
" colo smpl
set background=dark

set autoindent
set backspace=indent,eol,start


" Copy & paste
set pastetoggle=<F2>
"" set clipboard=unnamed


" Keys
" QUIT
let mapleader=","
map <leader>e :q<CR> "quit
map <leader>q :qa!<cr>
map <leader>l :nohl<cr>
" Moving lines
" nnoremap <S-j> :m .+1<CR>
" nnoremap <S-k> :m .-2<CR>
nnoremap <S-k> :m .+1<CR>==
nnoremap <S-j> :m .-2<CR>==
nnoremap <S-DOWN> :m .+1<CR>==
nnoremap <S-UP> :m .-2<CR>==


" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
