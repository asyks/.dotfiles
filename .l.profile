# (linux only) PATH stuff
PATH=/usr/local/bin:/bin:/usr/bin:${PATH}
PATH=~/.local/bin:${PATH}
PATH=~/.pyenv/bin:${PATH}
PATH=${PATH}:${GOPATH}/bin
export PATH

if [ $(command -v pyenv) 1>/dev/null 2>&1 ]; then
  eval "$(pyenv init --path)"
fi
