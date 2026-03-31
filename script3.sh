#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Ayush Giri | Roll: 24BSA10285
# Course: Open Source Software
# Purpose: Audits key system directories for permissions and disk usage

# --- List of directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "================================================"
echo " Disk and Permission Auditor"
echo "================================================"
printf "%-20s %-25s %-10s\n" "Directory" "Permissions/Owner" "Size"
echo "------------------------------------------------"

# --- for loop: iterate over each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions and owner using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get directory size, suppress permission errors
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        printf "%-20s %-25s %-10s\n" "$DIR" "$PERMS" "$SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "------------------------------------------------"
echo ""
echo "--- Git Config Directory Check ---"

# --- Check if git config files exist and print permissions ---
GIT_CONFIGS=("$HOME/.gitconfig" "/etc/gitconfig")

for CONFIG in "${GIT_CONFIGS[@]}"; do
    if [ -f "$CONFIG" ]; then
        PERMS=$(ls -l "$CONFIG" | awk '{print $1, $3, $4}')
        echo "Found : $CONFIG"
        echo "Perms : $PERMS"
    else
        echo "Not found: $CONFIG (git may not be configured yet)"
    fi
done

echo "================================================"
