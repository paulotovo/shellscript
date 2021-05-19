#!/bin/bash

# Bash doesn't have multi-dimensional array. But you can simulate a somewhat similar effect with associative arrays. 
# The following is an example of associative array pretending to be used as multi-dimensional array:

declare -A arr
arr[0,0]=0
arr[0,1]=1
arr[1,0]=2
arr[1,1]=3
echo "${arr[0,0]} ${arr[0,1]}" # will print 0 1

# If you don't declare the array as associative (with -A), the above won't work. 
# For example, if you omit the declare -A arr line, the echo will print 2 3 instead of 0 1, because 0,0, 1,0 and such will be taken 
# as arithmetic expression and evaluated to 0 (the value to the right of the comma operator).