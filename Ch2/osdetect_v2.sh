#!/bin/bash -
#
# USAGE:
#    osdetect.sh

OS=""
function detect_os() {
  if type -t wevtutil &> /dev/null; then
    OS=MSWIN
  elif type -t scutil &> /dev/null; then
    OS=macOS
  else
    OS=Linux
  fi
}
detect_os
echo "$OS"

