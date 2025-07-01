#!/bin/bash

# subhunt.sh — Day 2: Subdomain Enumeration with Sublist3r
# Built for 30 Days of Hacking by @Jxnesyy

# Step 1: Prompt for target
echo ""
echo "Type the magic words to begin..."
read -p "➤ " magic

# Step 2: Ask for domain
read -p "Enter domain to scan: " domain

# Step 3: Run Sublist3r
echo ""
echo "[*] Starting subdomain scan on: $domain"
echo "[*] Using Sublist3r to hunt for hidden subdomains..."
echo ""

python3 day02/scripts/sublist3r.py -d "$domain" -o "day02/reports/${domain}_subs.txt"

# Step 4: Confirm save
echo ""
echo "✅ Scan complete. Results saved to: reports/${domain}_subs.txt"
echo ""
