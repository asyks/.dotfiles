# Autoload prompt
autoload -U promptinit
promptinit

# Turn off MULTIOS
unsetopt MULTIOS

# Prompt
PROMPT="%F{magenta}%1~ > %f"
 
# Basic options
setopt autocd
setopt auto_resume
setopt extendedglob
setopt completeinword
unsetopt caseglob
 
# Auto complete options
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'
 
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
alias ls='ls'
alias ll='ls -l'
alias l='ls -lFh'
alias la='ls -lAFh'
alias lr='ls -tRFh'
alias lt='ls -ltFh'
alias vi='vim'
alias grep='grep --color'
alias docker-clean='docker rm $(docker ps -a -q); docker image prune'

# Source secrets file if available
SECRETS_FILE=$HOME/.secrets
if [ -f $SECRETS_FILE ]
then
  source $SECRETS_FILE
fi

# Source os specific profile config file if available
if [[ $(uname) == 'Linux' ]]
then
    OS_PROFILE_CONFIG_FILE=$HOME/.l.profile
elif [[ $(uname) == 'Darwin' ]]
then
    OS_PROFILE_CONFIG_FILE=$HOME/.d.profile
fi

if [ -f $OS_PROFILE_CONFIG_FILE ]
then
  source $OS_PROFILE_CONFIG_FILE
fi

# Source airship profile config file if available
AS_PROFILE_CONFIG_FILE=$HOME/.a.profile
if [ -f $AS_PROFILE_CONFIG_FILE ]
then
  source $AS_PROFILE_CONFIG_FILE
fi

# Pyenv setup
if command -v pyenv 1>/dev/null 2>&1;
then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
