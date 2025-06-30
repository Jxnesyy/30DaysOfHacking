#!/bin/bash
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv activate maigret311


echo ""
echo "Type the magic words to begin..."
read -p "➤ " input

if [[ $input != "Hunt them" ]]; then
  echo "🛑 Invalid phrase. Try again."
  exit 1
fi

echo "[*] Terminating stale obs-cli zombies..."
pkill -f obs-cli &>/dev/null

# Start OBS Recording
echo "[*] Connecting to OBS and starting recording..."
/home/jxnesyy/.pyenv/versions/3.11.8/bin/obs-cli -H localhost -P 4455 ...

# Set OBS Scene
echo "[*] Switching to scene: Day01 TikTok Osint..."
/home/jxnesyy/.pyenv/versions/3.11.8/bin/obs-cli -H localhost -P 4455 ... "Day01 TikTok Osint"

# Run Maigret and show output live
USERNAME="jxnesyy"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
mkdir -p reports
REPORT_FILE="reports/${USERNAME}_${TIMESTAMP}.txt"
echo "[*] Launching Maigret scan on $USERNAME..."
maigret "$USERNAME" | tee "$REPORT_FILE"

# Stop OBS Recording
echo "[*] Stopping recording..."
/home/jxnesyy/.pyenv/versions/3.11.8/bin/obs-cli -H localhost -P 4455 ...

echo ""
echo "✅ Hunt complete. Report saved to: $REPORT_FILE"
