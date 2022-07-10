CONF_NAME = $(shell basename $$PWD)
GIT_DIR   = ${HOME}/developer/dotfiles/.$(CONF_NAME)
WORK_TREE = ${HOME}/developer/$(CONF_NAME)

GIT = /usr/bin/git --git-dir=$(GIT_DIR) --work-tree=$(WORK_TREE)

include ${HOME}/.config/dev.mk
