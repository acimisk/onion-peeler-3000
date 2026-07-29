#!/bin/bash

file="$1"

while true
do
    fileType=$(file "$file")

    if echo "$fileType" | grep -q "gzip"; then
        mv "$file" "$file.gz"
        gunzip -f "$file.gz"
        file=$(ls -t | grep -v "onionpeeler.sh" | head -n 1)

    elif echo "$fileType" | grep -q "bzip2"; then
        mv "$file" "$file.bz2"
        bunzip2 -f "$file.bz2"
        file=$(ls -t | grep -v "onionpeeler.sh" | head -n 1)

    elif echo "$fileType" | grep -q "tar"; then
        mv "$file" "$file.tar"
        tar -xf "$file.tar"
        rm "$file.tar"
        file=$(ls -t | grep -v "onionpeeler.sh" | head -n 1)

    elif echo "$fileType" | grep -q "ASCII text"; then
        echo ""
        echo "==========================="
        echo "   WE GOT HIM!!            "
        echo "==========================="
        cat "$file"
        echo ""
        exit 0

    else
        echo "Not my problem anymore: $fileType"
        break
    fi
done
