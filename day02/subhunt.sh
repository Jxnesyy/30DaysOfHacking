#!/bin/bash

echo -e "\nType the magic words to begin..."
read -p "➤ " start

if [[ "$start" != "Hunt them" ]]; then
  echo "❌ Access denied. Say the magic words!"
  exit 1
fi

read -p "Enter domain to scan: " domain

echo -e "\n[*] Starting subdomain scan on: $domain"
echo "[*] Using Sublist3r to hunt for hidden subdomains..."

# Ensure output directory exists
mkdir -p day02/reports

# Run Sublist3r
python3 day02/scripts/sublist3r.py -d "$domain" -o "day02/reports/${domain}_subs.txt"

echo -e "\n✅ Scan complete. Results saved to: day02/reports/${domain}_subs.txt"
