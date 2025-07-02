#!/bin/bash

echo "[*] Enter the full URL (e.g., https://example.com):"
read target

output_file="../reports/headers_$(echo $target | sed 's|https\?://||;s|/||g').txt"

echo "[*] Fetching headers for $target ..."
echo "====== HTTP Headers for $target ======" > "$output_file"
curl -s -I "$target" >> "$output_file"

echo "[+] Done. Results saved to $output_file"
