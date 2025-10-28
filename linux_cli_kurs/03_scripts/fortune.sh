#!/usr/bin/env bash
FORTUNES=("Arch users never update — they upgrade constantly."
"Debian users reboot once per decade."
"Ubuntu: Because apt-get install coffee doesn't work yet."
"Linux: Where you fix problems you didn’t know you had.")
RANDOM_INDEX=$((RANDOM % ${#FORTUNES[@]}))
echo "${FORTUNES[$RANDOM_INDEX]}"
