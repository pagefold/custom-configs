#!/usr/bin/env bash

printf "Configuring system and checking for necessary apps.\n"
printf "This will probably take a while.\n\n"

## Do some quick config
CWD=`dirname $0`
BIN="$CWD/bin"
COLWIDTH="15"
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`

## Each requirement is a separate file,
## so they remain independent.
## We just need to execute each file
## in the proper order here.

. $BIN/homebrew.sh
. $BIN/git.sh
. $BIN/ruby.sh

printf "\nConfiguration Complete.\n\n"
