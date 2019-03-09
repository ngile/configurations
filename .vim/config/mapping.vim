""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                Disable arrow keys in normal and insert mode                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
no <Up> <NOP>
no <Down> <NOP>
no <Left> <NOP>
no <Right> <NOP>

ino <Up> <NOP>
ino <Down> <NOP>
ino <Left> <NOP>
ino <Right> <NOP>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Run python program with make command                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F9> :compile pyunit<CR>:make<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            auto-centar mappigns                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Custom maps                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let mapleader=","
map <SPACE> <leader>
" noremap \ ,
map <leader>nhp :nohl<cr>\|:call flake8#Flake8UnplaceMarkers() <cr>
map <leader>nhn :nohl<cr>
imap jk <Esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Moving lines                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <S-j> :m .+1<CR>==
" nnoremap <S-k> :m .-2<CR>==


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Moving around splits                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-L> <C-W>l<C-W>\|
map <C-H> <C-W>h<C-W>\|
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <leader>bo :only<cr>
map <leader>bw :bw<cr>
map <leader>bh <C-W>S
map <leader>bv <C-W>v
