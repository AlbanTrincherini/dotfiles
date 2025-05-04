export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export PAGER=less
export BROWSER=firefox
# export MANPATH="/usr/local/man:$MANPATH"
