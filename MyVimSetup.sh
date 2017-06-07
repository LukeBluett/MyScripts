
git clone https://github.com/LukeBluett/vim.git

mkdir -p ~/Project && \
	git clone https://github.com/LukeBluett/vim.git ~/Project

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle 

vim -u NONE -c "helptags ~/.vim/bundle/vim-fugitive/doc" -c q

git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle

vim -u NONE -c "helptags ~/.vim/bundle/nerdtree/doc" -c q

mkdir -p ~/Project/vim/colours && \
	git clone https://github.com/NLKNguyen/papercolor-theme.git ~/Project/vim/colours && \
	cp -r ~/Project/vim/colours/papercolor-theme/colors ~/.vim/



