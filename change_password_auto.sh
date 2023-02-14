#!/bin/bash

# Define the list of usernames to change password
USER_LIST=("user1" "user2" "user3")

# Loop through the list of usernames and change their password
for USER in "${USER_LIST[@]}"
do
    # Generate a random password for the user
    NEW_PASSWORD=$(openssl rand -base64 12)

    # Set the new password for the user
    echo -e "$NEW_PASSWORD\n$NEW_PASSWORD" | passwd $USER

    # Print a message with the new password
    echo "Password for $USER has been changed to: $NEW_PASSWORD"
done

# This script defines an array of usernames to change their password and loops through the list of usernames to change their passwords.
# It generates a random password for each user using the openssl rand command, sets the new password using the passwd command, and prints a message with the new password.
# Note that this script assumes that you have sufficient privileges to change the passwords for the specified users using the passwd command.
# Also, be aware that generating random passwords and changing passwords automatically can have security implications, and you should use caution when implementing this type of script in a production environment.