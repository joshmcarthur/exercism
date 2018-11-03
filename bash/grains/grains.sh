#!/usr/bin/env bash

calc() {
  local field=$1
  echo "$(( 2**(${field}-1)))"
}

total() {
  local sum=0
  for i in {1..64} 
  do
    sum=$(($sum+$(calc $i)))
  done

  printf "%u\n" $sum
}

main() {
  local field=$1
  local min=1
  local max=64

  if [ "$field" = "total" ]; then
    total
    exit
  fi

  if [ "$field" -lt "$min" -o "$field" -gt "$max" ]; then
    echo "Error: invalid input"
    exit 1
  fi

  local result=$(calc $field)
  printf "%u\n" $result
}

main "$@"
