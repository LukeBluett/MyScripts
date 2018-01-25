#!/bin/bash

if [ ! -d ~/.vim ]; then
	mkdir ~/.vim
fi
echo Created .vim directory

if [ ! -f ~/.vimrc ]; then
	if [ ! -d ~/Projects ]; then
		mkdir ~/Projects
	fi

	git clone https://github.com/LukeBluett/vim.git ~/Projects

	ln -s ~/Projects/vim/vimrc ~/.vimrc
fi
echo Set .vimrc

if [ ! -d ~/.vim/autoload ];
then
		mkdir ~/.vim/autoload
fi
echo Created autoload Folder

if [ ! -d ~/.vim/bundle ];
then
		mkdir ~/.vim/bundle
fi
echo Created bundle Folder

if [ ! -f ~/.vim/autoload/pathogen.vim ];
then
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi
echo Added pathogen.vim

if [ ! -d ~/.vim/bundle/vim-fugitive ];
then
	git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive 
	vim -u NONE -c "helptags ~/.vim/bundle/vim-fugitive/doc" -c q
fi
echo Added vim-fugitive

if [ ! -d ~/.vim/bundle/nerdtree ];
then	
	git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
	vim -u NONE -c "helptags ~/.vim/bundle/nerdtree/doc" -c q
fi
echo Added nerdtree

if [ ! -d ~/Projects/vim/colours ];
then
	mkdir ~/Projects/vim/colours
	git clone https://github.com/NLKNguyen/papercolor-theme.git ~/Projects/vim/colours
	cp -r ~/Projects/vim/colours/papercolor-theme/colors ~/.vim/
fi
echo Added Colours

