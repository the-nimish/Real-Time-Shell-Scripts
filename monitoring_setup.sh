#!/bin/bash

# Install the monitoring tools
sudo apt-get update
sudo apt-get install -y sysstat

# Enable data collection for sar
sudo sed -i 's/ENABLED="false"/ENABLED="true"/g' /etc/default/sysstat
sudo service sysstat restart

# Configure sar to run every 10 minutes
sudo echo "*/10 * * * * root /usr/lib/sa/sa1" >> /etc/cron.d/sysstat
sudo echo "59 23 * * * root /usr/lib/sa/sa2 -A" >> /etc/cron.d/sysstat

# The above script installs the "sysstat" package and enables data collection for the "sar" utility. It also configures "sar" to run every 10 minutes and collect data on system activity.
# This data can be used to monitor various aspects of the system, such as CPU utilization, memory usage, I/O activity, and more.