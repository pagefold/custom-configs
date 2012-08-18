#!/usr/bin/env bash

CMD="brew"
$CMD -v >/dev/null
if [ $? -ne 0 ] ; then
  printf "$RED%-${COLWIDTH}s [installing]$RESET\n" $CMD
else
  printf "$GREEN%-${COLWIDTH}s [ok]$RESET\n" $CMD
fi
