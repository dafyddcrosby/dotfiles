
HOMEFILES=.bashrc .gitconfig .screenrc .vimrc

install:
	cp $(HOMEFILES) ~
clean:
	rm -rf *~
