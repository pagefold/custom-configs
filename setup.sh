#!/usr/bin/env bash

printf "Configuring system and checking for necessary apps.\n"
printf "This will probably take a while.\n"

## Do some quick config
CWD=`dirname $0`
BIN="$CWD/bin"
OS=$(uname)
if [ $OS == "Darwin" ]; then
  OSTYPE="Mac"
  PKGMGR="brew install"
else
  OSTYPE="*nix"
  PKGMGR="sudo apt get install"
fi
COLWIDTH="15"
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
PURPLE=$(tput setaf 5)
CYAN=$(tput setaf 6)
RESET=$(tput sgr0)

printf "${YELLOW}Installing on ${OSTYPE}.${RESET}\n\n" 

## Each requirement is a separate file,
## so they remain independent.
## We just need to execute each file
## in the proper order here.

. $BIN/brew.sh
. $BIN/git.sh
. $BIN/ruby.sh

printf "\nConfiguration Complete.\n\n"
