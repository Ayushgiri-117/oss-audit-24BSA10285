#!/bin/bash
# Script 4: Log File Analyzer
# Author: Ayush Giri | Roll: 24BSA10285
# Course: Open Source Software
# Purpose: Reads a log file and counts occurrences of a keyword
# Usage: ./script4.sh /var/log/syslog error

# --- Accept command line arguments ---
LOGFILE=${1:-/var/log/syslog}
KEYWORD=${2:-"error"}

COUNT=0
MATCH_LINES=()

echo "================================================"
echo " Log File Analyzer"
echo "================================================"
echo "Log file : $LOGFILE"
echo "Keyword  : $KEYWORD"
echo "------------------------------------------------"

# --- Validate the file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    echo "Tip: Try running with a valid log path:"
    echo "  ./script4.sh /var/log/syslog error"
    exit 1
fi

# --- Check file is not empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: Log file is empty."
    exit 0
fi

# --- while read loop: go through file line by line ---
while IFS= read -r LINE; do
    # if-then: check if line contains keyword (case insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
        MATCH_LINES+=("$LINE")
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""

# --- Print last 5 matching lines ---
if [ $COUNT -gt 0 ]; then
    echo "--- Last 5 matching lines ---"
    # Use tail to get last 5 from matching lines array
    printf '%s\n' "${MATCH_LINES[@]}" | tail -5
fi

echo "================================================"
