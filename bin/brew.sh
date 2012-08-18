#!/usr/bin/env bash

if [ $OS == "Darwin" ]; then
  CMD="brew"
  $CMD -v >/dev/null
  if [ $? -ne 0 ] ; then
    printf "$RED%-${COLWIDTH}s [installing]$RESET\n" $CMD
    ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)
  else
    printf "$GREEN%-${COLWIDTH}s [ok]$RESET\n" $CMD
  fi
fi
