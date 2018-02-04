""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Delete trailing white space on save                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

function! TextConfig()
    set spell
    hi SpellBad cterm=underline ctermfg=yellow
    source ~/.vim/abbrev.vim
endfunction
