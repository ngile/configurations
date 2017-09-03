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


