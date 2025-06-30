#!/bin/bash

echo "[*] Running OSINT on TikTok username using Docker..."
USERNAME="$1"

if [ -z "$USERNAME" ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

docker run -it --rm soxoj/maigret "$USERNAME" -a
