
HOMEFILES=.bashrc .gitconfig

install:
	cp $(HOMEFILES) ~
clean:
	rm -rf *~
