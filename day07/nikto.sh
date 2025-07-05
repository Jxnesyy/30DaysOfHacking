#!/bin/bash

# Day 7 - Nikto Web Vulnerability Scanner
# Author: Jxnesyy | 30DaysOfHacking | github.com/Jxnesyy

echo -e "\e[1;36m[+] Starting Nikto Scan...\e[0m"

read -p "Enter target domain or IP (e.g. http://example.com): " TARGET

# Output directory
mkdir -p day07_output

# Scan with Nikto
nikto -h "$TARGET" -o day07_output/nikto_scan_$(date +%F_%T).txt

echo -e "\n\e[1;32m[+] Scan complete! Results saved to 'day07_output/'\e[0m"
