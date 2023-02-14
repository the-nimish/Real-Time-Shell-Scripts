#!/bin/bash

# Define the software name
software_name="nginx"

# Check if the software is already installed
if which "$software_name" > /dev/null; then
  echo "$software_name is already installed."
else
  # Install the software
  sudo apt-get update
  sudo apt-get install "$software_name"

  # Check if the installation was successful
  if [ $? -eq 0 ]; then
    echo "$software_name installation was successful."
  else
    echo "$software_name installation failed."
  fi
fi
