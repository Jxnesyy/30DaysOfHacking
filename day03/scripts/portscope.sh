#!/bin/bash

echo
echo "Type the magic words to begin..."
read -p "➤ Hunt them: " magic

if [[ "$magic" != "Hunt them" ]]; then
  echo "❌ Incorrect magic words. Exiting."
  exit 1
fi

echo "[*] Starting Nmap port scan..."
read -p "Enter target domain or IP: " target

timestamp=$(date +"%Y%m%d_%H%M%S")
mkdir -p ../reports

# Replace slashes in target so it's safe for filenames
sanitized_target=$(echo "$target" | tr '/' '_')
output_file="../reports/${sanitized_target}_nmap_${timestamp}.txt"

echo "[*] Running: nmap -sV -T4 -Pn $target"
nmap -sV -T4 -Pn "$target" | tee "$output_file"

echo
echo "✅ Scan complete. Results saved to: $output_file"

