#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Ayush Giri | Roll: 24BSA10285
# Course: Open Source Software
# Purpose: Checks if a package is installed and prints its details

# --- Set the package to inspect ---
PACKAGE="git"

echo "================================================"
echo " FOSS Package Inspector"
echo "================================================"

# --- Check if git is installed using if-then-else ---
if command -v $PACKAGE &>/dev/null; then
    echo "Status  : $PACKAGE is INSTALLED"
    echo "Path    : $(which $PACKAGE)"
    echo "Version : $(git --version)"

    # Try to get package info depending on distro
    if dpkg -l $PACKAGE &>/dev/null 2>&1; then
        echo ""
        echo "--- Package Details (dpkg) ---"
        dpkg -l $PACKAGE | grep "^ii" | awk '{print "Package: "$2"\nVersion: "$3}'
    elif rpm -q $PACKAGE &>/dev/null 2>&1; then
        echo ""
        echo "--- Package Details (rpm) ---"
        rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
    fi
else
    echo "Status : $PACKAGE is NOT installed."
    echo "To install, run: sudo apt install git"
fi

echo ""
echo "--- Open Source Philosophy Note ---"

# --- case statement: philosophy note based on package name ---
case $PACKAGE in
    git)
        echo "Git: Linus Torvalds built Git in 10 days in 2005"
        echo "when BitKeeper revoked its free license for Linux"
        echo "kernel developers. He needed a tool that was truly"
        echo "free — so he built one and gave it away."
        ;;
    httpd|apache2)
        echo "Apache: the web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps,"
        echo "now forked into MariaDB after Oracle's acquisition."
        ;;
    python3|python)
        echo "Python: a language shaped entirely by community,"
        echo "designed to be readable and accessible to everyone."
        ;;
    *)
        echo "$PACKAGE: part of the open source ecosystem."
        ;;
esac

echo "================================================"
