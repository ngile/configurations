""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     Install vim plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'pearofducks/ansible-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'Rykka/riv.vim'
Plugin 'yuttie/comfortable-motion.vim'
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
map <leader>b :CtrlPBuffer<cr>

