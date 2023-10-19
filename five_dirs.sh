#!/bin/bash
mkdir -p five

for i in {1..5}; do
    subdir="five/dir${i}"
    mkdir -p "$subdir"
    
    for j in {1..4}; do
        filename="${subdir}/file${j}"
        
        seq $j > "$filename"
    done
done
