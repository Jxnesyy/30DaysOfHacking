#!/bin/bash

# Day 5 – Hidden File Hunt with dirb
read -p "[*] Target URL (e.g., nasa.gov or https://nasa.gov): " TARGET

# Prepend http:// if user forgets
if [[ "$TARGET" != http* ]]; then
    TARGET="http://$TARGET"
fi

echo "[*] Starting dirb scan on $TARGET ..."
dirb "$TARGET" /usr/share/wordlists/dirb/common.txt -o ../reports/dirb_report.txt | tee ../reports/dirb_output.log

echo "[+] Scan complete. Report saved in ../reports/"

