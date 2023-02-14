#!/bin/bash

# Define the process name
process_name="process_to_kill"

# Get the PID of the process
pid=$(pidof "$process_name")

# Kill the process
if [ ! -z "$pid" ]; then
  kill "$pid"
  echo "Process with PID $pid has been killed."
else
  echo "Process not found."
fi

# Replace the process name in the script with the actual name of the process you want to kill.