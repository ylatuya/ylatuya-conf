init:
	git submodule init
	cd vim/bundle/command-t/ruby/command-t && ruby extconf.rb && make

link:
	ln -sf `pwd`/vim ~/.vim
	ln -sf `pwd`/vim/vimrc ~/.vimrc
	ln -sf `pwd`/gitconfig ~/.gitconfig
