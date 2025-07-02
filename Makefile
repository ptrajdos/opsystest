ROOTDIR=$(realpath $(dir $(firstword $(MAKEFILE_LIST))))
PACKAGES_FILE=${ROOTDIR}/mint_packages.txt

.PHONY: all clean

all: install checks


install: install_packages
	@echo "Installing packages from ${PACKAGES_FILE}"

checks: checkbash checkfind checktree checkvim checkgrep checksponge checktee checkdiff checksed checkulimit 

	echo "All checked"

install_packages:
	sudo apt update
	sudo apt upgrade -y
	sudo xargs -a ${PACKAGES_FILE} apt install -y

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
	sed --version


checkulimit:
	echo "Checking ulimit"
	ulimit -a > /dev/null

checkbc:
	echo "Checking bc"
	bc -help >/dev/null
