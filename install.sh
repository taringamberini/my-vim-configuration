#!/bin/bash

INSTALL_DIR=vim-my-conf
echo "Installing (g)Vim configuration in ~/$INSTALL_DIR"

echo "Checking for previous (g)Vim configuration"
if [ -d ~/.vim ] || [ -f ~/.vimrc ] || [ -f ~/.gvim ] || [ -d ~/$INSTALL_DIR ]
then
	echo "You already have an existing (g)Vim configuration"
	BACKUP_DIR="vim-configuration-backup-$(date +%Y%m%d%H%M%S)"
	echo -n "Trying to back it up in ~/$BACKUP_DIR ... "
	mkdir ~/$BACKUP_DIR
	mv ~/.vim ~/$BACKUP_DIR
	mv ~/.vimrc ~/$BACKUP_DIR
	mv ~/.gvim ~/$BACKUP_DIR
	mv ~/$INSTALL_DIR ~/$BACKUP_DIR
	echo "success"
fi

echo "Cloning my Vim configuration from GitHub in ~/$INSTALL_DIR"
git clone https://github.com/taringamberini/my-vim-configuration.git ~/$INSTALL_DIR

echo "Creating symlinks"
ln -s ~/$INSTALL_DIR/vimrc ~/.vimrc
ln -s ~/$INSTALL_DIR/gvim ~/.gvim
mkdir ~/.vim
ln -s ~/$INSTALL_DIR/vim/after -t ~/.vim

echo "Installing vundle: a Vim plugin manager"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Installing plugins using vundle"
vim +PluginInstall +qall

echo "Vim installation completed :-)"

