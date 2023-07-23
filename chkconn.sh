#!/usr/bin/env bash

ping -c1 8.8.8.8 &> /dev/null
while [[ $? -ne 0 ]]; do
    echo "Checking connection"
    ping -c1 8.8.8.8 &> /dev/null
done

mpv $HOME/downloads/bell.wav
