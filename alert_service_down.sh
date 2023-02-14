#!/bin/bash
# This is a script to generate alert on slack whenever a service goes down in system
 
# Define the Slack webhook URL
webhook_url="https://hooks.slack.com/services/your/webhook/url"

# Define the service name
service_name="nginx"

# Check if the service is running
service_status=$(systemctl is-active "$service_name")

# If the service is down, send a Slack alert
if [ "$service_status" != "active" ]; then
  message="Service $service_name is down."
  payload="{\"text\":\"$message\"}"
  curl -X POST -H "Content-Type: application/json" --data "$payload" "$webhook_url"
fi
