SHELL := /bin/bash
ROOTDIR=$(realpath $(dir $(firstword $(MAKEFILE_LIST))))

.PHONY: all clean



all: checkbash checkfind checktree checkvim checkcode checksubl checkgedit checkgrep checksponge checktee checkdiff checksed checkulimit 

	echo "All checked"

checkbash:
	echo "Checking bash"
	bash --version


checkfind:
	echo "Checking find"
	find ${ROOTDIR} > /dev/null

checktree:
	echo "Checking tree"
	tree ${ROOTDIR} > /dev/null

checkvim:
	echo "Checking vim"
	vim --version 

checkcode:
	echo "Checking vscode"
	code --version > /dev/null

checksubl:
	echo "Checking sublime text"
	subl --version > /dev/null

checkgedit:
	echo "Checking gedit"
	gedit --version > /dev/null

checkgrep:
	echo "Checking grep"
	grep --version > /dev/null

checksponge:
	echo "Checking sponge"
	echo "A" | sponge  > /dev/null

checktee:
	echo "Checking tee"
	echo "A" | tee  > /dev/null

checkdiff:
	echo "Checking diff"
	diff --version > /dev/null


checksed:
	echo "Checking sed"
	echo "A" |sed  > /dev/null


checkulimit:
	echo "Checking ulimit"
	ulimit -a > /dev/null