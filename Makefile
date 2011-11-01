init:
	git submodule init
	cd vim/bundle/command-t/ruby/command-t && ruby extconf.rb && make
	ln -s `pwd`/vim ~/.vim
	ln -s `pwd`/vim/vimrc ~/.vimrc
