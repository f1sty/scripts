#!/bin/env bash

output=$(cmus-remote -Q 2>/dev/null)

readarray -t tagline <<< $output
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

for line in "${tagline[@]}"; do
  args=($line)
  case $line in
    *tracknumber*)
      tracknumber=${args[2]}
      ;;
    *title*)
      title=${args[@]:2}
      ;;
    *artist*)
      artist=${args[@]:2}
      ;;
    *album*)
      album=${args[@]:2}
      ;;
    *date*)
      date=${args[2]}
      ;;
    *comment*)
      comment=${args[@]:2}
      ;;
  esac
done

if [ $status_glyph == "❌" ] || [ $status_glyph == "⏹️" ]; then
  echo $status_glyph
else
  echo "$status_glyph $artist - $title [$album $date]"
fi
