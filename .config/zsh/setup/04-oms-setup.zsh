#!/bin/zsh
# oh-my-zsh setup (does most of the heavy lifting)
export ZSH=$ZDOTDIR/oh-my-zsh
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

if [ ! -d $ZSH ]; then
  echo --------------------------
  echo   Installing Oh-my-zsh
  echo --------------------------
  # Installation instructions taken directly from oms github
  export ZDOTDIR
  export KEEP_ZSHRC=yes
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  unset KEEP_ZSHRC
fi

