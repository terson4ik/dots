#!/bin/bash
sleep 4 && pactl load-module module-remap-sink sink_name=mono master=$(pactl get-default-sink) channels=2 channel_map=mono,mono
