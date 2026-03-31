#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Ayush Giri | Roll: 24BSA10285
# Course: Open Source Software
# Purpose: Generates a personalised open source philosophy statement

echo "================================================"
echo " Open Source Manifesto Generator"
echo "================================================"
echo "Answer three questions to generate your manifesto."
echo ""

# --- Read user input interactively ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you: " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get current date and set output filename ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Generating your manifesto..."
echo ""

# --- Compose manifesto using string concatenation and write to file ---
# The > operator creates/overwrites the file
echo "================================================" > "$OUTPUT"
echo " Open Source Manifesto" >> "$OUTPUT"
echo " Generated on: $DATE" >> "$OUTPUT"
echo " Author: Ayush Giri | 24BSA10285" >> "$OUTPUT"
echo "================================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Build the paragraph using the user's three answers
echo "Every day, I rely on $TOOL — a tool built not for profit," >> "$OUTPUT"
echo "but because someone believed that knowledge should be shared." >> "$OUTPUT"
echo "To me, freedom in software means $FREEDOM: the ability to" >> "$OUTPUT"
echo "use, study, modify, and distribute without asking permission." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Open source taught me that the most powerful things we build" >> "$OUTPUT"
echo "are built together. That is why, given the chance, I would" >> "$OUTPUT"
echo "build $BUILD and release it freely — so that someone else," >> "$OUTPUT"
echo "somewhere, could stand on my shoulders the way I have stood" >> "$OUTPUT"
echo "on the shoulders of those who came before me." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "This is not just a license choice. It is a philosophy." >> "$OUTPUT"
echo "================================================" >> "$OUTPUT"

# --- Display the manifesto using cat ---
cat "$OUTPUT"
echo ""
echo "Saved to: $OUTPUT"
echo "================================================"

# Note: An alias example — in bash you could define:
# alias manifest='./script5.sh'
# This would let you run 'manifest' instead of './script5.sh'
