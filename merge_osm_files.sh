#!/bin/bash
# From https://lists.openstreetmap.org/pipermail/osmosis-dev/2013-October/001619.html

rm merged.osm;

args=()
for osm in "$@" ; do
    args+=(--rx "$osm")
done
for ((i=0; i < $#-1; i++)) ; do
    args+=(--merge)
done
args+=(--wx out/merged.osm)

osmosis "${args[@]}"
