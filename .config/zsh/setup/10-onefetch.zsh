#!/bin/zsh

# git repository greeter
if command -v onefetch 2>&1 >/dev/null; then
  
  # Taken from https://github.com/o2sh/onefetch/wiki/getting-started#1-bash--zsh
  last_repository=
  check_directory_for_new_repository() {
   current_repository=$(git rev-parse --show-toplevel 2> /dev/null)
   
   if [ "$current_repository" ] && \
      [ "$current_repository" != "$last_repository" ]; then
    onefetch \
    --nerd-fonts \
    --no-bots \
    --image ~/images/lapis-onefetch.png \
    --text-colors 1 2 6 2 6 13 \
    --http-url
   fi
   last_repository=$current_repository
  }
  cd() {
   builtin cd "$@"
   check_directory_for_new_repository
  }
else
  echo "$0: onefetch not found (sudo pacman -S onefetch)"
fi
