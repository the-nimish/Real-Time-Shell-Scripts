#!/bin/bash

# Determine the operating system version and set the appropriate package manager
if [ -f /etc/redhat-release ]; then
    # Red Hat, CentOS, or Fedora
    PM="yum"
elif [ -f /etc/debian_version ]; then
    # Debian or Ubuntu
    PM="apt-get"
else
    echo "Unsupported operating system"
    exit 1
fi

# Use the appropriate package manager to install the package
if [ "$PM" = "yum" ]; then
    # Install the package on Red Hat, CentOS, or Fedora
    sudo yum install packagename
elif [ "$PM" = "apt-get" ]; then
    # Install the package on Debian or Ubuntu
    sudo apt-get update
    sudo apt-get install packagename
fi

# This script uses the existence of the /etc/redhat-release or /etc/debian_version file to determine the operating system version, and sets the appropriate package manager (yum or apt-get).
# It then uses the appropriate package manager to install the specified package (packagename).
# Note that this script assumes that you have sufficient privileges to install packages using the sudo command, and that the package you want to install is available in the package repository for your distribution.
# Also, be sure to replace packagename with the name of the package you want to install.