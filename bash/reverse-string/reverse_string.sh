#!/usr/bin/env bash

main() {
  local input=$1
  local output=""
  local length="${#input}"
  local i=0

  while ((i<length)); do
    output="${input:i++:1}$output";
  done

  echo $output
}

main "$@"

