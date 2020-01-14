call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'joshdick/onedark.vim'

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

Plug 'junegunn/seoul256.vim'


Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'nvie/vim-flake8'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'easymotion/vim-easymotion'
Plug 'pearofducks/ansible-vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'majutsushi/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" ================
" vim settings
" ================
"
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.

" always show signcolumns
set signcolumn=yes
set mouse=a
syntax on
set cmdheight=2
set t_Co=256
"set tw=79
set noerrorbells
set visualbell
set t_vb=
set undolevels=700
set t_Co=256
set wildignore=*.o,*~,*.pyc
"Always show current position
set hid
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Search
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase

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
" Colors
"
"

" Use Unix as the standard file type
set ffs=unix,dos,mac
colo jellybeans

hi! Normal ctermbg=NONE guibg=NONE
hi! EndOfBuffer ctermbg=NONE guibg=NONE
hi! CursorLine term=bold cterm=bold guibg=NONE
hi! NonText ctermbg=none
set termguicolors
set rnu
set nu

set cursorcolumn
set cursorline

set scrolloff=2
set makeprg=python3\ %
set path+=**

set timeout timeoutlen=3000 ttimeoutlen=100


if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif


" Copy & paste
set pastetoggle=<F2>

" Auto foldding
" augroup vimrc
"   au BufReadPre * setlocal foldmethod=indent
"   au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
" augroup END

autocmd FileType text,markdown call TextConfig()


" =============
" Plugin config
" =============
"

" COC
"

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" Snippets
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['.vim/UltiSnips', 'UltiSnips'] 

" Airline theme config
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1

" Flake8 config
let g:flake8_show_in_gutter=1
let g:flake8_quickfix_height=7
" autocmd BufWritePost *.py call Flake8()

" Commentary plugin
autocmd BufNewFile,BufRead *.json set ft=json
autocmd FileType python,yaml,yml,puppet setlocal commentstring=#\ %s
autocmd FileType python,yaml,yml,pp setlocal commentstring=#\ %s
autocmd FileType sh setlocal commentstring=#\ %s
autocmd FileType vim setlocal commentstring=\"\ %s

" Ansible plugin
let g:ansible_unindent_after_newline = 1

" CTRLP
map <leader>bl :CtrlPBuffer<cr>

" NERDTree
nmap <leader>e :NERDTreeToggle<CR>

" Tagbar
nmap <leader>t :TagbarToggle<CR>

" Easymotion
"
map <space><space> <leader><leader>

" Syntastic
 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting = 0
let g:syntastic_auto_jump = 3
let g:syntastic_loc_list_height = 5


" =============
" Custom mapping
" =============
"

"auto-centar mappigns
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" set mapleader to space
map <SPACE> <leader>
" noremap \ ,
map <leader>nhp :nohl<cr>\|:call flake8#Flake8UnplaceMarkers() <cr>
map <leader>nhn :nohl<cr>
imap jk <Esc>

"Moving around splits
map <C-L> <C-W>l<C-W>\|
map <C-H> <C-W>h<C-W>\|
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <leader>bo :only<cr>
map <leader>bw :bw<cr>
map <leader>bh <C-W>S
map <leader>bv <C-W>v

" =============
" Functions
" =============
"

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction



