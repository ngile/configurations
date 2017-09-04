""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     Load custom mappings and functions                     "
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
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'phenomenes/ansible-snippets'
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
" Snippets
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['.vim/UltiSnips', 'UltiSnips'] 

" Airline theme config
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1

" Flake8 config
let g:flake8_show_in_gutter=1
let g:flake8_quickfix_height=7
" autocmd BufWritePost *.py call Flake8()

" Commentary plugin
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType sh setlocal commentstring=#\ %s
autocmd FileType vim setlocal commentstring=\"\ %s


