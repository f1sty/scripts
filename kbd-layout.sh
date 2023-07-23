#!/bin/sh
COMMAND=$(xset -q | grep LED | awk '{ print $10 }')

case "$COMMAND" in

 "00000000"|"00000001") LAYOUT="us" ;;

 "00001000"|"00001001") LAYOUT="ua" ;;

  *) LAYOUT="??" ;;

esac

echo $LAYOUT
