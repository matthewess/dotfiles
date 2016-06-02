#!/usr/bin/env zsh
git clone --recursive https://github.com/jay-hankins/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
chsh -s /bin/zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done