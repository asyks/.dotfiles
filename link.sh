#!/usr/bin/env bash

set -o errexit
set -o nounset

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

main () {
  # zsh
  ln -fs ${DIR}/.zshrc ${HOME}/.zshrc
  ln -fs ${DIR}/.l.profile ${HOME}/.l.profile
  ln -fs ${DIR}/.d.profide ${HOME}/.d.profide

  # git
  ln -fs ${DIR}/.gitconfig ${HOME}/.gitconfig
  ln -fs ${DIR}/.gitignore-global ${HOME}/.gitignore-global

  # tmux
  ln -fs ${DIR}/.tmux.conf ${HOME}/.tmux.conf

  # vscode
  ln -fs ${DIR}/.vscode.launch.json "${HOME}/.vscode/launch.json"
  if [[ $(uname) == 'Linux' ]]
  then
    ln -fs ${DIR}/.vscode.settings.json "${HOME}/.config/Code/User/settings.json" 
    ln -fs ${DIR}/.vscode.keybindings.json "${HOME}/.config/Code/User/keybindings.json" 
  elif [[ $(uname) == 'Darwin' ]]
  then
    ln -fs ${DIR}/.vscode.settings.json "${HOME}/Library/Application Support/Code/User/settings.json"
    ln -fs ${DIR}/.vscode.keybindings.json "${HOME}/Library/Application Support/Code/User/keybindings.json"
  fi
}

main "${@:-}"
exit $?
