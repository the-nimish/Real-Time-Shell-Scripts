#!/bin/bash

# Define the email information
to="you@example.com"
subject="Low RAM Alert"

# Get the available RAM
available_ram=$(free -m | awk 'NR==2{printf "%.2f%%\n", $7/$2*100}')

# Check if the available RAM is less than 20%
if (( $(echo "$available_ram < 20" | bc -l) )); then
  # Compose the email message
  message="The available RAM is running low at $available_ram. Please take necessary actions to avoid performance degradation."

  # Send the email
  echo "$message" | mail -s "$subject" "$to"
fi

# Replace the email information in the script with the actual information for your email setup.