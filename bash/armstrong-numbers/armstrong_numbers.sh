#!/usr/bin/env bash

main() {
  local numberAsString="$1"
  local numberLength=${#numberAsString}
  local cumulativeSum=$(
    echo $numberAsString |\
    grep -o . |\
    awk -v numLength=$numberLength '{s+=$1^numLength}END{print s}'
  )
   
  if [ $cumulativeSum -eq $1 ]
  then
    echo "true"
  else
    echo "false"
  fi
}

main "$@"
