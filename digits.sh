#!/bin/bash
sum=0
for num in {1000..2000}; do
    if [[ $num =~ ^[01]+$ ]]; then
        sum=$((sum + num))
    fi
done

echo "The sum of numbers in range(1000,2000)\
 having digits from\
 the {0, 1} is: $sum"
