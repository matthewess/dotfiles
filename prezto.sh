#!/usr/bin/env zsh

# This script clones my prezto configuration
# and installs it in the same manner as the
# original prezto install script.
#
# https://github.com/sorin-ionescu/prezto/

git clone --recursive https://github.com/matthewess/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
chsh -s /bin/zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done