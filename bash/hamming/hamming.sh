#!/usr/bin/env bash

main() {
  local strand1=$1
  local strand2=$2
  if [ "$#" -lt 2 ]; then
    echo "Usage: hamming.sh <strand1> <strand2>"
    exit 1
  fi

  if [ "${#strand1}" -ne "${#strand2}" ]; then
    echo "left and right strands must be of equal length"
    exit 1
  fi
  
  cmp -l  <(echo -n "$strand1") <(echo -n "$strand2") | wc -l
}

main "$@"
