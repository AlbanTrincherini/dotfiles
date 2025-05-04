#!/bin/zsh

() {
  # File structure shamelessly inspired from https://github.com/marlonrichert/zsh-launchpad
  local file=
  # <-> matches any non-negative integer
  # (n) sorts the result (allows us to run the config file in a deterministic ordering)
  for file in $ZDOTDIR/setup/<->-*.zsh(n); do
    . $file
  done
} "$@"
