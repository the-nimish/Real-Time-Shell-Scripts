#!/bin/bash

# Get the list of all running services
services=$(systemctl list-units --type=service --state=running --quiet)

# Print the list of running services
echo "List of running services:"
echo "$services"
