#!/bin/bash

# Define the log directory
log_dir=/var/log

# Define the backup directory
backup_dir=/backup/logs

# Create the backup directory if it doesn't exist
if [ ! -d "$backup_dir" ]; then
  mkdir -p "$backup_dir"
fi

# Copy all the log files to the backup directory
cp "$log_dir"/*.log "$backup_dir"/

# Print the results
if [ $? -eq 0 ]; then
  echo "Logs backup completed successfully."
else
  echo "Logs backup failed."
fi