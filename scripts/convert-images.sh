#!/usr/bin/env sh

for item in $*; do
    if [[ -a $item ]]; then
        #statements
        fbase=$(basename $item)
        fname=${fbase%.*}
        echo "Creating: $fname.png"
        convert "$item" -border 1x1 "$fname.png"
    else
        echo "Not a file: $item"
    fi
done