#!/usr/bin/env bash

main() {
  local score=0
  local words=${1^^}
  for character in $(echo $words | grep -o .); do
    local points=0
    case $character in
      A|E|I|O|U|L|N|R|S|T)
        points=1
        ;;
      D|G)
        points=2
        ;;
      B|C|M|P)
        points=3
        ;;
      F|H|V|W|Y)
        points=4
        ;;
      K)
        points=5
        ;;
      J|X)
        points=8
        ;;
      Q|Z)
        points=10
        ;;
    esac

    let score=$score+$points
  done

  echo $score
}

main "$@"
