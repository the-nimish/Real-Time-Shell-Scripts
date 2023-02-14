#!/bin/bash

# Define the Slack webhook URL
webhook_url="https://hooks.slack.com/services/your/webhook/url"

# Define the list of 100 systems
systems=(
  system1
  system2
  ...
  system100
)

# Initialize a variable to keep track of unreachable systems
unreachable=()

# Loop through the list of systems and check their connectivity
for system in "${systems[@]}"; do
  ping -c 1 "$system" > /dev/null
  if [ $? -ne 0 ]; then
    unreachable+=($system)
  fi
done

# If any systems are unreachable, send a Slack alert
if [ ${#unreachable[@]} -ne 0 ]; then
  message="The following systems are unreachable: ${unreachable[@]}"
  payload="{\"text\":\"$message\"}"
  curl -X POST -H "Content-Type: application/json" --data "$payload" "$webhook_url"
fi
