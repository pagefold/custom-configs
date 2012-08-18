#!/usr/bin/env bash

CMD="git"
git --version >/dev/null
if [ $? -ne 0 ] ; then
  printf "$RED%-15s [installing]$RESET\n" $CMD
  $PKGMGR git
else
  printf "$GREEN%-15s [ok]$RESET\n" $CMD
fi
