#!/bin/bash

LOG_FILE="/var/log/resource_usage.log"
INTERVAL=60  # Interval in seconds between checks

# Function to log CPU and memory usage
log_usage() {
    local cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    local mem_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    local log_message="$(date): CPU usage: $cpu_usage%, Memory usage: $mem_usage%"
    echo $log_message | tee -a $LOG_FILE
}

# Create log file if it doesn't exist and set the correct permissions
touch $LOG_FILE
chmod 644 $LOG_FILE

# Infinite loop to log usage at regular intervals
while true; do
    log_usage
    sleep $INTERVAL
done
