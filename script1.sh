#!/bin/bash
# Script 1: System Identity Report
# Author: Ayush Giri | Roll: 24BSA10285
# Course: Open Source Software
# Purpose: Displays system information as a welcome screen

# --- Variables ---
STUDENT_NAME="Ayush Giri"
ROLL_NUMBER="24BSA10285"
SOFTWARE_CHOICE="Git"

# --- Gather system info using command substitution ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2 || cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date '+%d %B %Y, %H:%M:%S')
HOME_DIR=$HOME

# --- Display formatted output ---
echo "================================================"
echo "     Open Source Audit — $STUDENT_NAME"
echo "     Roll Number : $ROLL_NUMBER"
echo "================================================"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "License         : GNU General Public License v2"
echo "------------------------------------------------"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Logged in as    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Date & Time     : $CURRENT_DATE"
echo "------------------------------------------------"
echo "Note: The Linux kernel itself is licensed under"
echo "GPL v2 — the same license as Git."
echo "================================================"
