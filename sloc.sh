#!/usr/bin/env bash

git diff --stat $(git rev-list --max-parents=0 HEAD)
