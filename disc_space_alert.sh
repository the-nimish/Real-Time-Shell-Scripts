#!/bin/bash

# Define the Slack webhook URL
webhook_url="https://hooks.slack.com/services/your/webhook/url"

# Define the threshold value (80%)
threshold=80

# Get the available disk space
available=$(df / | awk 'FNR == 2 {print $5}' | tr -d '%')

# If the available disk space crosses the threshold, send a Slack alert
if [ "$available" -ge "$threshold" ]; then
  message="Available disk space is $available%. Threshold is set to $threshold%."
  payload="{\"text\":\"$message\"}"
  curl -X POST -H "Content-Type: application/json" --data "$payload" "$webhook_url"
fi
