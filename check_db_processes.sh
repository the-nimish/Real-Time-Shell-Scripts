#!/bin/bash

# Define the database connection information
host="localhost"
user="dbuser"
password="password"
db_name="yourdb"

# Connect to the database
mysql -h "$host" -u "$user" -p"$password" "$db_name" << EOF

# Check running processes in the database
SELECT * FROM information_schema.processlist WHERE state != '';

EOF

# Replace the database connection information in the script with the actual information for your database.