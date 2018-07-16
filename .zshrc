# Autoload prompt
autoload -U promptinit
promptinit

# Turn off MULTIOS
unsetopt MULTIOS

# Prompt
PROMPT="%F{green}%n%f %F{cyan}%1~%f %F{green}# %f"
RPROMPT="%F{green}[%D.%*]%f"
 
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

# Source profile config file if available
PROFILE_CONFIG_FILE=$HOME/.profile
if [ -f $PROFILE_CONFIG_FILE ]
then
  source $PROFILE_CONFIG_FILE
fi
