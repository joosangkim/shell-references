#!/bin/bash -

echo "there are $# arguments"

function print_all() {
  echo "PRINT ALL"
  local cnt=1
  for arg in "$@" ; do
    echo "arg${cnt}: ${arg}"
    let cnt++
  done

}
function print_even() {
  echo "PRINT EVEN"
  local cnt=1
  for arg in $@ ; do
    if (( $cnt%2 )) ; then
      echo "arg${cnt}: ${arg}"
    fi
    ((cnt+=1))
  done
}
print_all $@
print_even $@
