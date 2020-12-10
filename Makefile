UNAME := $(shell uname -s)
ENABLE_PROFILE_A := ${ENABLE_PROFILE_A}

$(warning $(ENABLE_PROFILE_A))

.PHONY: install
install: link-zsh link-git link-tmux link-pyenv link-vscode

.PHONY: link-zsh
link-zsh:
	ln -snf $(CURDIR)/.l.profile $(HOME)/.l.profile
	ln -snf $(CURDIR)/.d.profile  $(HOME)/.d.profile
	ln -snf $(CURDIR)/.secrets  $(HOME)/.secrets
	ln -snf $(CURDIR)/.zshrc $(HOME)/.zshrc
ifeq ($(ENABLE_PROFILE_A), true)
	ln -snf $(CURDIR)/.a.profile  $(HOME)/.a.profile
endif

.PHONY: link-git
link-git:
	ln -snf $(CURDIR)/.gitconfig $(HOME)/.gitconfig
	ln -snf $(CURDIR)/.gitignore-global $(HOME)/.gitignore-global

.PHONY: link-tmux
link-tmux:
	ln -snf $(CURDIR)/.tmux.conf $(HOME)/.tmux.conf

.PHONY: link-pyenv
link-pyenv:
	ln -snf $(CURDIR)/.python-version $(HOME)/.python-version

.PHONY: link-vscode
link-vscode:
ifeq ($(UNAME),Linux)
	ln -snf $(CURDIR)/.vscode.settings.json "$(HOME)/.config/Code/User/settings.json" 
	ln -snf $(CURDIR)/.vscode.keybindings.json "$(HOME)/.config/Code/User/keybindings.json" 
endif
ifeq ($(UNAME),Darwin)
	ln -snf $(CURDIR)/.vscode.settings.json "$(HOME)/Library/Application Support/Code/User/settings.json"
	ln -snf $(CURDIR)/.vscode.keybindings.json "$(HOME)/Library/Application Support/Code/User/keybindings.json"
endif
