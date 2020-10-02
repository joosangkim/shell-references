#!/bin/bash -
#
# USAGE:
#    osdetect.sh
if [[ $(uname) == "Darwin" ]]; then
  OS=macOS
elif [[ $(uname) == "Linux" ]]; then
  OS=Linux
else
  OS=Windows
fi
echo $OS
