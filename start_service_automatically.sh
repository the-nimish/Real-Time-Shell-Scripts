#!/bin/bash

# Define the service name
service_name="nginx"

# Check if the service is already running
if systemctl is-active --quiet "$service_name"; then
  echo "$service_name is already running."
else
  # Start the service
  sudo systemctl start "$service_name"

  # Check if the service started successfully
  if [ $? -eq 0 ]; then
    echo "$service_name started successfully."
  else
    echo "$service_name failed to start."
  fi
fi
