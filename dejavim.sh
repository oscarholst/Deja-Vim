#!/bin/bash
# Déjà vu, Déjà Vim
# Just a hacky way for me to get a familiar Vim config wherever i am..

deja_vim () {
        mkdir -p ~/.vim ~/.vimtemp1 ~/.vimtemp2
        git clone https://github.com/vim-airline/vim-airline.git ~/.vimtemp1/
        git clone https://github.com/vim-airline/vim-airline-themes.git ~/.vimtemp2/
        rsync -a ~/.vimtemp1/ ~/.vim/ && rsync -a ~/.vimtemp2/ ~/.vim/ && echo "Successful cloning!"
        rm -rf ~/.vimtemp1 && rm -rf ~/.vimtemp2
        wget -P ~/.vim/colors "https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim"
        wget https://raw.githubusercontent.com/oscarholst/Deja-Vim/main/dot_vimrc -O ~/.vimrc
}

deja_vim
