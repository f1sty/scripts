#!/usr/bin/env bash

monitor=$(xrandr --listmonitors | tail -1 | cut -d' ' -f6)
xrandr --output $monitor --brightness $1
