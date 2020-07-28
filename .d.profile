# homebrew PATH stuff
PATH=/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
PATH=/usr/local/share/python:${PATH}
PATH=/usr/local/bin:/bin:/usr/bin:${PATH}
export PATH

# python Path stuff
export PYTHONPATH=/usr/local/lib/python

# vscodevim key-repeating stuff
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# the next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aaron.sykes/Downloads/google-cloud-sdk/path.zsh.inc' ];
then source '/Users/aaron.sykes/Downloads/google-cloud-sdk/path.zsh.inc';
fi

# the next line enables shell command completion for gcloud.
if [ -f '/Users/aaron.sykes/Downloads/google-cloud-sdk/completion.zsh.inc' ];
then source '/Users/aaron.sykes/Downloads/google-cloud-sdk/completion.zsh.inc';
fi
