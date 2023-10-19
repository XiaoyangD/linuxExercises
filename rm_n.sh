#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <dir> <n>" 1>&2
    exit 1
fi

dir="$1"
size_limit="$2"

find "$dir" -type f -size +"$size_limit"c -delete
echo "Files larger than $size_limit bytes in '$dir' have been removed."
