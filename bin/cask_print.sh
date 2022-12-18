#!/bin/bash

### cask_print.sh
### cwillsey06
### 2022-12-17 [17:28]

## brew-like echo script

BOLD="$(tput bold)"
RESET="\u001b[0m"
RED="\u001b[31m"
GREEN="\u001b[32m"
YELLOW="\u001b[33m"
BLUE="\u001b[34m"

function bold_print {
    for v in "$@"; do
        echo -e "$(tput bold)$v${RESET}"
    done
}

function cask_print { 
    case $1 in
        --info)     c="$BLUE"   ;;
        --progress) c="$GREEN"  ;;
        --warning)  c="$YELLOW" ;;
        --error)    c="$RED"    ;;
    esac
    shift
    echo -e "$c==>${RESET} $(bold_print "$1")"
}
