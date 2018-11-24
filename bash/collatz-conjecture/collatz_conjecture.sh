#!/usr/bin/env bash

main() {
  local totalSteps=0
  local inputNumber=$1

  if [[ $inputNumber -lt 1 ]]; then
    echo "Error: Only positive numbers are allowed"
    exit 1
  fi

  while [ $inputNumber -ne 1 ]; do
    totalSteps=$((totalSteps+1))
    if ! ((inputNumber % 2)); then
      inputNumber=$((inputNumber/2))
    else
      inputNumber=$((inputNumber*3+1))
    fi
  done

  echo $totalSteps
}

main "$@"
