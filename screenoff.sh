#!/usr/bin/env bash

case $1 in
  off)
    xset dpms force standby;;
  *)
    echo "commands: off";;
esac
