#!/bin/bash

# Shell script to get the top 5 largest files in the file system passed via positional argument 

echo "This program get first 10 biggest files in the file system passed via positional argument"
path="$1"
echo $path
du -ah $path | sort -hr | head -n 5 > /tmp/filesize.txt
echo "This is the list of big files in the file system $path"
cat /tmp/filesize.txt
