" Disable arrow keys
no <Up> <NOP>
no <Down> <NOP>
no <Left> <NOP>
no <Right> <NOP>

ino <Up> <inoP>
ino <Down> <inoP>
ino <Left> <inoP>
ino <Right> <inoP>

" Run python with make
nnoremap <F9> :compile pyunit<CR>:make<CR>

" Keys
let mapleader=","
map <leader>e :q<CR> "quit
map <leader>q :qa!<cr>
map <leader>l :nohl<cr>
" Moving lines
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
noremap <leader><Tab> <C-W><C-W>
