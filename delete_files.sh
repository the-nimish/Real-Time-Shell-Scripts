#!/bin/bash

# This script deletes the files which are older than 30 days


echo "Program to delete files older than 30 days"
path="$1"
echo $path
find $path -mtime +30 -delete
if [[ $? -eq 0 ]];
then 
    echo "Files deleted successfully"
else 
    echo "No files deleted"
fi