#!/bin/bash

# Define the base hostname of the systems to be shut down
BASE_HOSTNAME="system"

# Define the starting number of the system hostname
START_NUM=1

# Define the ending number of the system hostname
END_NUM=100

# Define the remote user to use for SSH connection
USER="remote-user"

# Loop through each system and shut it down using SSH
for i in $(seq $START_NUM $END_NUM)
do
    HOSTNAME="$BASE_HOSTNAME$i"
    echo "Shutting down $HOSTNAME ..."
    ssh $USER@$HOSTNAME 'sudo shutdown -h now'
done

# Make sure to replace system with the actual base hostname of the systems you want to shut down, 1 with the starting number of the hostname, and 100 with the ending number of the hostname.
# Also, ensure that you have SSH access to each system and that your SSH key is authorized on each system.
# Note that this script assumes that you have sudo privileges on each system, and that you want to shut down the systems immediately without any delay or warning.
# If you need to customize the shutdown behavior, you can modify the sudo shutdown command in the script to include any additional options or parameters you need.