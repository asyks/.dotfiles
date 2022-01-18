# (linux only) PATH stuff
PATH=/usr/local/bin:/bin:/usr/bin:${PATH}
PATH=~/.local/bin:${PATH}
PATH=~/.pyenv/bin:${PATH}
export PATH

if [ $(command -v pyenv) 1>/dev/null 2>&1 ]; then
  eval "$(pyenv init --path)"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/asykes/google-cloud-sdk/path.zsh.inc' ];
then . '/home/asykes/google-cloud-sdk/path.zsh.inc';
fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/asykes/google-cloud-sdk/completion.zsh.inc' ];
then . '/home/asykes/google-cloud-sdk/completion.zsh.inc';
fi
