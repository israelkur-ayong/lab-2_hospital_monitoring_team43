#!/bin/bash

# prompt for the device name
echo -n "Monitor_A: "
read Monitor_A

# Define the log file
LOG_FILE="heart_rate_log.txt"

echo "logging heart rate data for $Monitor_A..."

# Function to log heart rate data
touch "$LOG_FILE"
while true; do
	TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
	HEART_RATE=$((RANDOM % 40 + 50)) # Simulated heart rate (random between 50_90)
	echo "$TIMESTAMP $DEVICE_NAME $HEART_RATE" >> "$LOG_FILE" 
	sleep 1 #log every second
done &

# Display the process ID
echo "Heart rate monitoring started with PID: $!"
