UNAME := $(shell uname -s)

.PHONY: install
install: link-zsh link-git link-tmux link-vscode

.PHONY: link-zsh
link-zsh:
	ln -snf $(CURDIR)/.l.profile $(HOME)/.l.profile
	ln -snf $(CURDIR)/.d.profile  $(HOME)/.d.profile
	ln -snf $(CURDIR)/.zshrc $(HOME)/.zshrc

.PHONY: link-git
link-git:
	ln -snf $(CURDIR)/.gitconfig $(HOME)/.gitconfig
	ln -snf $(CURDIR)/.gitignore-global $(HOME)/.gitignore-global

.PHONY: link-tmux
link-tmux:
	ln -snf $(CURDIR)/.tmux.conf $(HOME)/.tmux.conf

.PHONY: link-vscode
link-vscode:
	ln -snf $(CURDIR)/.vscode.launch.json "$(HOME)/.vscode/launch.json"
ifeq ($(UNAME),Linux)
	ln -snf $(CURDIR)/.vscode.settings.json "$(HOME)/.config/Code/User/settings.json" 
	ln -snf $(CURDIR)/.vscode.keybindings.json "$(HOME)/.config/Code/User/keybindings.json" 
endif
ifeq ($(UNAME),Darwin)
	ln -snf $(CURDIR)/.vscode.settings.json "$(HOME)/Library/Application Support/Code/User/settings.json"
	ln -snf $(CURDIR)/.vscode.keybindings.json "$(HOME)/Library/Application Support/Code/User/keybindings.json"
endif
