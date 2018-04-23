# Colors
fg_white=%{$'\e[1;37m'%}
fg_lgreen=%{$'\e[1;32m'%}
fg_cyan=%{$'\e[0;36m'%}

# Prompt
PROMPT="${fg_lgreen}%n@%m[${fg_cyan}%1~${fg_lgreen}] $ ${fg_white}"
 
# Autoload prompt
autoload -U compinit
compinit

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
