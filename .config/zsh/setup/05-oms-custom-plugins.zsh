#!/bin/zsh

ZSH_CUSTOM=$ZSH/custom
# TODO Find an actual plugin manager because this is a mess...
# oh-my-zsh might not be the call boys

# Install custom plugins
if [ ! -d $ZSH/custom/plugins/zsh-autosuggestions/ ]; then
  echo --------------------------
  echo    Installing zsh-autosuggestions
  echo --------------------------
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi

if [ ! -d $ZSH/custom/plugins/zsh-syntax-highlighting/ ]; then
  echo --------------------------
  echo    Installing zsh-syntax-highlighting
  echo --------------------------
  git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi

