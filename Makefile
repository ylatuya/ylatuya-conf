init:
	git submodule update --init --recursive
	cd vim/bundle/command-t/ruby/command-t && ruby extconf.rb && make

link:
	ln -sf `pwd`/vim ~/.vim
	ln -sf `pwd`/vim/vimrc ~/.vimrc
	mkdir -p ~/.vim/colors
	ln -sf vim/bundle/solarized/colors/solarized.vim  ~/.vim/colors/solarized
	ln -sf `pwd`/gitconfig ~/.gitconfig
	ln -sf `pwd`/ssh/config ~/.ssh/config

