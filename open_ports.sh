#!/bin/bash

# Use 'netstat' to get a list of open ports and their associated processes
NETSTAT_OUTPUT=$(netstat -tulnp)

# Use 'grep' to filter the output to show only listening ports
LISTENING_PORTS=$(echo "$NETSTAT_OUTPUT" | grep "LISTEN")

# Use 'sed' to extract the port number and associated service name
echo "$LISTENING_PORTS" | sed -E 's/.*:(.*) .* (.*)\/.*/\1 \2/'

# This script uses the netstat command to get a list of all the open ports on the system and their associated processes.
# It then uses grep to filter the output to show only the ports that are in the "LISTEN" state.
# Finally, it uses sed to extract the port number and the associated service name from the output and print them on separate lines.
# Note that this script assumes that you have sufficient privileges to run the netstat command and that the output of the netstat command will include the service name in the format "SERVICE_NAME/PID".
# If your system does not include the service name in this format, you may need to modify the sed command to extract the service name in a different way.