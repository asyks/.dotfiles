# Autoload prompt
[ $(autoload -Uz promptinit) ] && promptinit

# Turn off MULTIOS
unsetopt MULTIOS

# Prompt
PROMPT="%F{magenta}%1~ > %f"
# Add newline before each prompt (except the first)
precmd() { precmd() { print "" } }
 
# Basic options
setopt autocd
setopt auto_resume
setopt extendedglob
setopt completeinword
unsetopt caseglob
 
# Auto complete options
zstyle ":completion:*" matcher-list "m:{a-zA-Z}={A-Za-z}"
zstyle ":completion:*:descriptions" format "%U%B%d%b%u"
zstyle ":completion:*:warnings" format "%BSorry, no matches for: %d%b"
zstyle ":completion:*:killall:*" command "ps -u $USER -o cmd"
 
# History
HISTFILE=~/.zsh-histfile
HISTSIZE=5000
SAVEHIST=5000
setopt incappendhistory
setopt sharehistory
setopt extendedhistory
setopt interactivecomments

# Localization
LC_ALL=$LANG
 
# Aliases
alias ls="ls"
alias ll="ls -l"
alias l="ls -lFh"
alias la="ls -lAFh"
alias lr="ls -tRFh"
alias lt="ls -ltFh"
alias vi="vim"
alias grep="grep --color"
alias docker-clean="docker rm $(docker ps -a -q); docker image prune"

# Source secrets file if available
[ -f "$HOME/.secrets" ] && . "$HOME/.secrets"

# Source os specific profile config file if available
if [ $(uname) = "Linux" ]; then
    OS_PROFILE_CONFIG_FILE="$HOME/.l.profile"
elif [ $(uname) = "Darwin" ]; then
    OS_PROFILE_CONFIG_FILE="$HOME/.d.profile"
fi

[ -f $OS_PROFILE_CONFIG_FILE ] && . $OS_PROFILE_CONFIG_FILE

# Source airship profile config file if available
[ -f $HOME/.a.profile ] && . $HOME/.a.profile

# Pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

if [ $(command -v pyenv) 1>/dev/null 2>&1 ]; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# NVM setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Go setup
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="$HOME/go"

# direnv setup
eval "$(direnv hook zsh)"
