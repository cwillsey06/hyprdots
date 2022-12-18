#!/usr/bin/env bash

artist=`playerctl metadata xesam:artist`
track=`playerctl metadata xesam:title`
sep="-"

echo "${artist} $sep ${track}"
