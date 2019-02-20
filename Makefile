DIR := $(shell pwd)
UNAME := $(shell uname -s)

.PHONY: install
install: link-zsh link-git link-tmux link-vscode

.PHONY: link-zsh
link-zsh:
	ln -snf $(DIR)/.zshrc $(HOME)/.zshrc
	ln -snf $(DIR)/.l.profile $(HOME)/.l.profile
	ln -snf $(DIR)/.d.profide $(HOME)/.d.profide

.PHONY: link-git
link-git:
	ln -snf $(DIR)/.gitconfig $(HOME)/.gitconfig
	ln -snf $(DIR)/.gitignore-global $(HOME)/.gitignore-global

.PHONY: link-tmux
link-tmux:
	ln -snf $(DIR)/.tmux.conf $(HOME)/.tmux.conf

.PHONY: link-vscode
link-vscode:
	ln -snf $(DIR)/.vscode.launch.json "$(HOME)/.vscode/launch.json"
ifeq ($(UNAME),Linux)
	ln -snf $(DIR)/.vscode.settings.json "$(HOME)/.config/Code/User/settings.json" 
	ln -snf $(DIR)/.vscode.keybindings.json "$(HOME)/.config/Code/User/keybindings.json" 
endif
ifeq ($(UNAME),Darwin)
	ln -snf $(DIR)/.vscode.settings.json "$(HOME)/Library/Application Support/Code/User/settings.json"
	ln -snf $(DIR)/.vscode.keybindings.json "$(HOME)/Library/Application Support/Code/User/keybindings.json"
endif
