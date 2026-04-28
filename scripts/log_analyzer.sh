#!/bin/bash

LOG="/var/log/syslog"

echo "=== LOG ANALYZER REPORT ==="
echo "Log file: $LOG"
echo

echo "Total lines in log:"
wc -l $LOG
echo

echo "Top 5 most frequent errors:"
grep -i "error" $LOG | sort | uniq -c | sort -nr | head -5
echo

echo "Top 5 most frequent warnings:"
grep -i "warning" $LOG | sort | uniq -c | sort -nr | head -5
echo

echo "Last 10 log entries:"
tail -10 $LOG
