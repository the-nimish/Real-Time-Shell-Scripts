#!/bin/bash

# Script to check if a service is running, here for ex, docker
# Uncomment the else section if you want to start the docker service automatically if its stopped
# Create a cron-tab job for this script

echo "==status of docker service=="
status=" `systemctl status docker| awk 'NR==3 {print}' | cut -d ":" -f 2 | cut -d '(' -f 1` "
echo $status
if [ $status = "active" ];
then
        echo "Service is running"
else
        echo "Service is not running"
#       sudo systemctl start docker
fi

