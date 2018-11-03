#!/usr/bin/env bash

main() {
  local field=$1
  local min=1
  local max=64

  if [ "$field" -lt "$min" -o "$field" -gt "$max" ]; then
    echo "Error: invalid input"
    exit 1
  fi

  local result=$((2**(${field}-1)))
  printf "%u\n" $result
}

main "$@"
