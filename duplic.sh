#!/usr/bin/env bash


echo "Please enter the source file name" 
read filename1
result1=$filename1
echo "Please enter your output filename:"
read filename
result=$filename
cat -n  $filename1 | sort -u -k2,7 | sort -n | sed 's/.*\t/    /;s/\([0-9]\{4\}\).*/\1/' > /tmp/$filename.txt