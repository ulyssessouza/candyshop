#mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
#current_dir := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PATH_LOCATION:=/usr/bin

install:
	unlink $(PATH_LOCATION)/jindent || true
	ln -s $(ROOT_DIR)/jindent $(PATH_LOCATION)/jindent
	unlink $(PATH_LOCATION)/gource-video-maker || true
	ln -s $(ROOT_DIR)/gource-video-maker.sh $(PATH_LOCATION)/gource-video-maker
	unlink $(PATH_LOCATION)/docker-cleanup-containers || true
	ln -s $(ROOT_DIR)/docker-cleanup-containers $(PATH_LOCATION)/docker-cleanup-containers
	unlink $(PATH_LOCATION)/find-in-jars.sh || true
	ln -s $(ROOT_DIR)/find-in-jars.sh $(PATH_LOCATION)/find-in-jars.sh
