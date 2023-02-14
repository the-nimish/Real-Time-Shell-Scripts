#!/bin/bash

# Shell Script to check if the disc usage is more than 80% 

echo "Checking disc usage"
disc_size=`df -h | grep "/dev/xvda1" | awk '{print $5}' | cut -d '%' -f 1`
echo "$disc_size% of the disc is filled"
if [ $disc_size -gt 80 ];
then
        echo "Disc usage is more than 80%. Please expand the storage or remove files for space"
else
        echo "Enough disc space is free"
fi

