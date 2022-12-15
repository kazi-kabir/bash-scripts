#!/bin/bash

# Get the list of all running processes
processes=$(ps aux)

# Loop through each process and kill it
while read -r line; do
  # Get the process ID
  pid=$(echo $line | awk '{print $2}')

  # Send the SIGKILL signal to the process
  kill -9 $pid
done <<< "$processes"