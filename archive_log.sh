#!/bin/bash

# Check if the log file exists before archiving
if [ -f "heart_rate_log.txt" ]; then
    TIMESTAMP=$(date "+%Y%m%d_%H%M%S")
    ARCHIVE_FILE="heart_rate_log_$TIMESTAMP.txt"

    mv heart_rate_log.txt $ARCHIVE_FILE
    echo "Log file archived as $ARCHIVE_FILE"
else
    echo "Error: heart_rate_log.txt not found! Run heart_rate_monitor.sh first."
fi

