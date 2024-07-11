#!/bin/bash

# Define the folder path
FOLDER_PATH="artifact"

# Loop indefinitely
while true; do
  # Check if the folder is not empty
  if [ "$(ls -A $FOLDER_PATH)" ]; then
    echo "The folder is not empty."
    break
  else
    echo "The folder is empty."
  fi

  # Wait for a specified amount of time before checking again (e.g., 10 seconds)
  sleep 10
done
