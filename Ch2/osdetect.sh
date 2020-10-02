#!/bin/bash -
#
# USAGE:
#    osdetect.sh

if type -t wevtutil &> /dev/null; then
  OS=MSWIN
elif type -t scutil &> /dev/null; then
  OS=macOS
else
  OS=Linux
fi
echo $OS

