# Autoload prompt
autoload -U promptinit
promptinit

# Prompt
PROMPT="%F{green}%n@%m%f %F{cyan}%1~%f %F{green}# %f"
RPROMPT="%F{green}[%D.%*]%f"

# Localization
export LC_ALL=$LANG
 
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
 
# Aliases
alias ls='ls'
alias ll='ls -l'
alias l='ls -lFh'
alias la='ls -lAFh'
alias lr='ls -tRFh'
alias lt='ls -ltFh'
alias vi='vim'
alias grep='grep --color'

# Ack Aliases
alias ack='ack-grep'
