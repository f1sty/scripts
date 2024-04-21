#!/usr/bin/env bash

image=$(docker images --format '{{.Repository}}' | fzf)
docker run --rm -it ${image} sh
