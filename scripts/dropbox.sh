#!/bin/bash

BINARY="dropbox"

BINARYLOC=`which ${BINARY}`
if [ "$?" -ne "0" ]; then
  set -e

  xterm -T InstallDropbox -g 100x30 -e sudo /app/scripts/install_dropbox.sh
  dropbox update
fi

dropbox version | xmessage -file -
