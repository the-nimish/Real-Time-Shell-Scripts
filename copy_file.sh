#!/bin/bash

# Define the source file to transfer
SOURCE_FILE="/path/to/source/file.txt"

# Define the destination machine's IP address or hostname
DESTINATION="destination-machine.example.com"

# Define the remote user to use for SSH connection
USER="remote-user"

# Define the destination path for the file on the remote machine
DESTINATION_PATH="/path/to/destination/"

# Use the 'scp' command to transfer the file to the remote machine
scp $SOURCE_FILE $USER@$DESTINATION:$DESTINATION_PATH


# Note that this script assumes that you have SSH access to the remote machine and that your SSH key is authorized on the remote machine.
# If you need to transfer multiple files, you can modify this script to include a loop to transfer each file in turn.