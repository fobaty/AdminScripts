#!/bin/bash

CPU_THRESHOLD=80
MEM_THRESHOLD=80
EMAIL="your.email@example.com"

# Check CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
if (( $(echo "$cpu_usage > $CPU_THRESHOLD" | bc -l) )); then
    echo "Server $(hostname): CPU usage is at $cpu_usage%" | mail -s "CPU Usage Warning: $cpu_usage%" $EMAIL
fi

# Check memory usage
mem_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
if (( $(echo "$mem_usage > $MEM_THRESHOLD" | bc -l) )); then
    echo "Server $(hostname): Memory usage is at $mem_usage%" | mail -s "Memory Usage Warning: $mem_usage%" $EMAIL
fi
