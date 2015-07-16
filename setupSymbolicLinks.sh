#!/bin/sh
cd

#vim setting
if [ -e .vimrc ];
    then
        rm .vimrc
fi
ln -s ./dotfiles/.vimrc .vimrc
mkdir -p .vim/backup


#NeoBundle setting
mkdir -p .vim/bundle
if [ ! -d ~/.vim/bundle/neobundle.vim ]
    then
        git clone git://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
fi


#zsh setting
if [ -e .zshrc ]
    then
        rm .zshrc
fi
ln -s ./dotfiles/.zshrc .zshrc


#PHP
mkdir -p .vim/dict
cp dotfiles/dict/php.dict .vim/dict
mkdir -p $HOME/.vim/phpCsFixer/
wget http://cs.sensiolabs.org/get/php-cs-fixer.phar -O $HOME/.vim/phpCsFixer/php-cs-fixer
chmod a+x $HOME/.vim/phpCsFixer/php-cs-fixer
