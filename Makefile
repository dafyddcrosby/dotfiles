HOMEFILES=.cvsrc .bash_profile .bashrc .gitconfig .screenrc .vimrc .vim

install:
	cp -r $(HOMEFILES) ~
clean:
	rm -rf *~
