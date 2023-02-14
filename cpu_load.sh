#!/bin/bash

# Define the threshold for the CPU load in decimal format (e.g. 0.8 for 80%)
THRESHOLD=0.8

# Get the current 1-minute CPU load average
CPU_LOAD=$(uptime | awk '{print $10}' | sed 's/,//')

# Compare the CPU load to the threshold
if [ $(echo "$CPU_LOAD > $THRESHOLD" | bc -l) -eq 1 ]; then
    # If the CPU load is above the threshold, send an alert email
    echo "CPU load is high: $CPU_LOAD" | mail -s "CPU Load Alert" your-email@example.com
fi

# replace your-email@example.com with your email address. 
# You can save the script with a .sh extension and run it periodically using a cron job to check the CPU load at regular intervals.
# Note that this script uses the bc command-line tool to perform floating-point arithmetic, which may not be installed by default on some systems.