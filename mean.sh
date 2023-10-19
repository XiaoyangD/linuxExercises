#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "usage: ./mean.sh <column> [file.csv]" >&2
    exit 1
fi

column=$1
file=${2:-/dev/stdin}

cut -d',' -f$column "$file" | tail -n +2 | {
    sum=0
    count=0
    while IFS= read -r value; do
        sum=$((sum + value))
        count=$((count + 1))
    done
    if [ "$count" -eq 0 ]; then
        echo "Error: No valid rows found for calculation." >&2
        exit 1
    fi

    mean=$((sum / count))
    echo "$mean"
}
