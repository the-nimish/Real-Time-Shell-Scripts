#!/bin/bash

# Get the current date and time
NOW=$(date +%s)

# Get the date and time 10 days ago in seconds since the epoch
TEN_DAYS_AGO=$(date -d "10 days ago" +%s)

# Use the 'last' command to get the list of login sessions and filter by date range
LOGINS=$(last --since $TEN_DAYS_AGO)

# Use 'awk' to extract the usernames from the login session list
USERS=$(echo "$LOGINS" | awk '{print $1}' | sort | uniq)

# Print the list of unique usernames
echo "Users who logged in during the last 10 days:"
echo "$USERS"

# This script uses the last command to get a list of login sessions, filters the list to include only sessions within the last 10 days, and then extracts the usernames from the filtered list using awk.
# The sort and uniq commands are used to remove any duplicate usernames. 
# Note that this script assumes that the last command is available on your system and that you have permission to run it.
# Also, note that the last command output might not be accurate if your system is configured to rotate or purge logs on a regular basis.