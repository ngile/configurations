""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     Install vim plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'romainl/flattened'
Plugin 'tpope/vim-surround'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'pearofducks/ansible-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'Rykka/riv.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'morhetz/gruvbox'
Plugin 'crusoexia/vim-monokai'
Plugin 'michalbachowski/vim-wombat256mod'
Plugin 'encody/nvim'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'nanotech/jellybeans.vim'
" Plugin 'yuttie/comfortable-motion.vim'
Plugin 'martinda/Jenkinsfile-vim-syntax'
Plugin 'majutsushi/tagbar'
call vundle#end()           
filetype plugin indent on    

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     Load custom mappings and functions                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/config/mapping.vim
source ~/.vim/config/settings.vim
source ~/.vim/config/functions.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Plugins config                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown preview
let g:mkdp_path_to_chrome = "firefox-esr"
let g:mkdp_auto_open = 1

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
