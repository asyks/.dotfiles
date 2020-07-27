# homebrew PATH stuff
PATH=/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
PATH=/usr/local/share/python:${PATH}
PATH=/usr/local/bin:/bin:/usr/bin:${PATH}
export PATH

# python Path stuff
export PYTHONPATH=/usr/local/lib/python

# vscodevim key-repeating stuff
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
