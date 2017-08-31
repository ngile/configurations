#!/bin/bash

repos="https://github.com/jiangmiao/auto-pairs.git https://github.com/davidhalter/jedi-vim.git https://github.com/vim-airline/vim-airline https://github.com/jiangmiao/auto-pairs.git https://github.com/ervandew/supertab.git https://github.com/tpope/vim-commentary.git https://github.com/tpope/vim-surround.git https://github.com/nvie/vim-flake8.git https://github.com/heavenshell/vim-pydocstring.git https://github.com/vim-airline/vim-airline-themes https://github.com/SirVer/ultisnips.git https://github.com/Glench/Vim-Jinja2-Syntax.git"

mkdir -p ~/.vim/{autoload,bundle,colors,ftplugin,indent}
curl https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim -o ~/.vim/autoload/pathogen.vim
curl https://raw.githubusercontent.com/vim-scripts/wombat256.vim/master/colors/wombat256mod.vim -o ~/.vim/colors/wombat256mod.vim
curl https://raw.githubusercontent.com/ngile/configurations/master/.vimrc -o ~/.vimrc
curl https://raw.githubusercontent.com/vim-scripts/groovyindent/master/indent/groovy.vim -o ~/.vim/indent/groovy.vim
cd ~/.vim/bundle
for i in ${repos}
do
    git clone ${i}
done
