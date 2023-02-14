#!/bin/bash

# Define the database connection information
host="localhost"
user="dbuser"
password="password"
db_name="newdb"

# Connect to the MySQL/MariaDB server
mysql -h "$host" -u "$user" -p"$password" << EOF

# Create the database
CREATE DATABASE IF NOT EXISTS "$db_name";

EOF

# Creates a new database in the MySQL/MariaDB server. Replace the database connection information in the script with the actual information for your database server.