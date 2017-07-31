init:
	git submodule update --init --recursive
	cd vim/bundle/command-t/ruby/command-t && ruby extconf.rb && make
	cd vim/bundle/youcompleteme && ./install.py --clang-completer --omnisharp-completer

link:
	ln -sf `pwd`/vim/* ~/.vim
	ln -sf `pwd`/vim/vimrc ~/.vimrc
	mkdir -p ~/.vim/colors
	ln -sf `pwd`/vim/bundle/solarized/colors/solarized.vim  ~/.vim/colors/solarized.vim
	ln -sf `pwd`/gitconfig ~/.gitconfig
	ln -sf `pwd`/ssh/config ~/.ssh/config
	ln -sf `pwd`/zshrc ~/.zshrc

USER_HOME = /c/Users/andoni
VIM_HOME = $(USER_HOME)/vimfiles
install-win32:
	mkdir -p $(VIM_HOME)/plugins
	cp -r `pwd`/vim/* $(VIM_HOME)
	cp  `pwd`/vim/vimrc $(USER_HOME)/.vimrc
	mkdir -p $(VIM_HOME)/colors
	cp `pwd`/vim/bundle/solarized/colors/solarized.vim  $(VIM_HOME)/colors/solarized.vim
	cp `pwd`/gitconfig ~/.gitconfig
 	#cp `pwd`/ssh/config ~/.ssh/config
