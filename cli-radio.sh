#!/usr/bin/env bash

mpv_args=(--volume=100 --title="radio-mpv" --no-terminal)
options=(
  "LofiGirl"
  "Chillhop"
  "BoxLofi"
  "TheBootlegBoy"
  "RadioSpinner"
  "SmoothChill"
  "SyntheticFM"
  "Zeno[Futurepop]"
  "Zeno[ClassicalFM]"
  "Background"
  "Quit"
)
stations=(
  "https://play.streamafrica.net/lofiradio"
  "http://stream.zeno.fm/fyn8eh3h5f8uv"
  "http://stream.zeno.fm/f3wvbbqmdg8uv"
  "http://stream.zeno.fm/0r0xa792kwzuv"
  "https://live.radiospinner.com/lofi-hip-hop-64"
  "https://media-ssl.musicradio.com/SmoothChill"
  "http://stream.syntheticfm.com:2199/tunein/syntheticfm.pls"
  "https://zeno.fm/radio/futurepop-and-synthpop-radio/"
  "https://zeno.fm/radio/classicalfm/"
)

play_station() {
    echo "$1 -- $2"
    pkill -f radio-mpv || echo "radio-mpv not running"
    notify-send "set station: " "$1" -i mpv
    mpv "${mpv_args[@]}" "$2" &
}

PS3="choose station: "

select option in "${options[@]}"
do
  case "$option" in
    "Quit")
      pkill -f radio-mpv || echo "radio-mpv not running"
      break
      ;;
    "Background") break
      ;;
    *) play_station "$option" "${stations[$REPLY - 1]}"
      ;;
  esac
done
