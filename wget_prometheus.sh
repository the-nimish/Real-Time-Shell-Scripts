#!/bin/bash

# Shell script to check if the promethious bindary is installed in the system or not and if not, download with wget and extract

# https://github.com/prometheus/prometheus/releases/download/v2.42.0/prometheus-2.42.0.linux-amd64.tar.gz

echo "Downloading the Prometheus binaries"
if [ -e /home/ec2-user/prometheus-2.42.0.linux-amd64.tar.gz ];
then
        echo "File is already existing. Now extracting.."
        tar -zxvf /home/ec2-user/prometheus-2.42.0.linux-amd64.tar.gz
else
        echo "Binary does not exist. Now downloading.."
        wget https://github.com/prometheus/prometheus/releases/download/v2.42.0/prometheus-2.42.0.linux-amd64.tar.gz
        tar -zxvf /home/ec2-user/prometheus-2.42.0.linux-amd64.tar.gz
        echo "Binary extracted. You can start prometheus"
fi

