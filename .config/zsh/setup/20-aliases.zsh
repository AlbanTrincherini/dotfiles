#!/bin/zsh


#
# ~/.aliases
#

# Base
alias b='cd ..'
alias ls='ls --color=auto'
alias la='ls -A'
alias grep='grep --color=auto'

# Other
alias windows='systemctl reboot --boot-loader-entry=auto-windows'
alias onefetch='onefetch --nerd-fonts \
--no-bots \
--image ~/images/lapis-onefetch.png \
--text-colors 1 2 6 2 6 13 \
--http-url'


# Kitty
alias s='kitten ssh'
alias icat='kitten icat'
