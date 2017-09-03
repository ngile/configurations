#!/bin/bash

mkdir -p ~/.vim/{bundle,colors,ftplugin,indent,config}
curl https://raw.githubusercontent.com/ngile/configurations/master/.vim/config/functions.vim -o ~/.vim/config/functions.vim
curl https://raw.githubusercontent.com/ngile/configurations/master/.vim/config/mapping.vim -o ~/.vim/config/mapping.vim
curl https://raw.githubusercontent.com/ngile/configurations/master/.vim/config/settings.vim -o ~/.vim/config/settings.vim
curl https://raw.githubusercontent.com/vim-scripts/wombat256.vim/master/colors/wombat256mod.vim -o ~/.vim/colors/wombat256mod.vim
curl https://raw.githubusercontent.com/vim-scripts/groovyindent/master/indent/groovy.vim -o ~/.vim/indent/groovy.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

`vim +PluginInstall +qall`

curl https://raw.githubusercontent.com/honza/vim-snippets/master/pythonx/vimsnippets.py -o ~/.vim/bundle/ultisnips/pythonx/vimsnippets.py
