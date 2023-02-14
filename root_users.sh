#!/bin/bash

# Use 'grep' to find lines in the /etc/sudoers file that grant root permissions
ROOT_USERS=$(grep -v -e '^#' /etc/sudoers | grep -e '\bALL=(ALL:ALL)\b' | awk '{print $1}')

# Print the list of root users
echo "Root users:"
echo "$ROOT_USERS"

# This script uses the grep command to search the /etc/sudoers file for lines that grant root permissions.
# It first uses grep -v to exclude any lines that start with a # character (which are comments), and then uses grep -e to filter the remaining lines to only those that grant ALL privileges to ALL users and groups.
# Finally, it uses awk to extract the usernames from the filtered lines.