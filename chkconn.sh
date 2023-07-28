#!/usr/bin/env bash

ping -c 1 8.8.8.8 &> /dev/null
while [[ $? -ne 0 ]]; do
    echo -ne "still offline\b\b\b\b\b\b\b\b\b\b\b\b\b"
    ping -c 1 8.8.8.8 &> /dev/null
done

mpv /home/f1sty/downloads/ding.mp3 &
