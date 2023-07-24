#!/usr/bin/env bash

mpv_args='--volume=50 --title="radio-mpv"'
options=(
    "Quit"
    "Lofi Girl | https://play.streamafrica.net/lofiradio"
    "Chillhop | http://stream.zeno.fm/fyn8eh3h5f8uv"
    "Box Lofi | http://stream.zeno.fm/f3wvbbqmdg8uv"
    "The Bootleg Boy | http://stream.zeno.fm/0r0xa792kwzuv"
    "Radio Spinner | https://live.radiospinner.com/lofi-hip-hop-64"
    "SmoothChill | https://media-ssl.musicradio.com/SmoothChill"
    "Sanctuary Radio | https://ssl.shoutcaststreaming.us:8090/stream"
    "Sanctuary Radio Retro | https://ssl.shoutcaststreaming.us:8090/stream2"
    "HardcorePower | https://panel.beheerstream.com:2199/tunein/hardcorep.pls"
    "Synthetic FM | http://stream.syntheticfm.com:2199/tunein/syntheticfm.pls"
    "Zeno [EBM Radio] | https://zeno.fm/radio/ebm-radio/"
    "Zeno [Futurepop] | https://zeno.fm/radio/futurepop-and-synthpop-radio/"
    "Zeno [Classical] | https://zeno.fm/radio/radio-christmas-non-stop-classical/"
    "Zeno [ClassicalFM] | https://zeno.fm/radio/classicalfm/"
)

menu() {
    items="${@,,}"
    echo -ne "${items//\\n /\\n}"
}

play_station() {
    choice="$@"
    title="${choice% | *}"
    url="${choice#* | }"

    echo "$title -- $url"
    pkill -f radio-mpv || echo "radio-mpv not running"
    dunstify "set station: " "$title" -i mpv
    mpv $mpv_args $url
}

choice=$(menu "${options[@]/%/\\n}" | bemenu) || exit

case $choice in
    quit)
        dunstify "Closing bemenu-radio" "Good-bye!" -i mpv
        pkill -f radio-mpv
        exit
        ;;
    *)
        echo "choice: $choice"
        play_station $choice
        ;;
esac
