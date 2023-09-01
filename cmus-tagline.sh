#!/bin/env bash

output=$(cmus-remote -Q 2>/dev/null | awk '/tag|status/ {print "["$2":", $3"]"}' | tr '\n' ' ')
tagline=($output)
playing_status=${tagline[0]}

case $playing_status in
  *playing*)
    status_glyph="▶️"
    ;;
  *paused*)
    status_glyph="⏸️"
    ;;
  *stopped*)
    status_glyph="⏹️"
    ;;
  *)
    status_glyph="❌"
    ;;
esac
echo $status_glyph ${tagline[@]:2}
