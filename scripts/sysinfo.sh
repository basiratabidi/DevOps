#!/bin/bash

echo "=== SYSTEM REPORT ==="
echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "Date & Time: $(date)"
echo "Disk Usage (/):"
df -h / | tail -1
echo "Running Processes: $(ps aux | wc -l)"
echo "Uptime: $(uptime -p)"
