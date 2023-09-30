#!/usr/bin/env bash
curl -L "https://api.open-meteo.com/v1/forecast?latitude=48.4666&longitude=35.0407&hourly=temperature_2m,relativehumidity_2m,apparent_temperature,rain,showers,snowfall" | jq . -
