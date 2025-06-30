#!/bin/bash

# ───────────────🎯 Configuration ───────────────
OBS_HOST="localhost"
OBS_PORT="4455"
OBS_PASSWORD="hunter123"
SCENE_NAME="Day01 TikTok Osint"
OUTPUT_DIR="$HOME/projects/30DaysOfHacking"
LOG_FILE="$OUTPUT_DIR/Day01_$(date +%F_%H-%M-%S).md"
MAIGRET_BIN="$HOME/tools/maigret/maigret.py"

# ───────────────🎬 Style ───────────────
clear
echo -e "\e[32m"
echo "╔════════════════════════════════════════════╗"
echo "║        🔍 OSINT HUNT ACTIVATED            ║"
echo "╚════════════════════════════════════════════╝"
echo -e "\e[0m"

# ───────────────🧠 Start OBS if Needed ───────────────
if ! pgrep -x "obs" > /dev/null; then
    echo "[*] Launching OBS..."
    nohup obs &>/dev/null &
    sleep 6
fi

# ───────────────🌐 Start OBS WebSocket Recording ───────────────
echo "[*] Connecting to OBS and starting recording..."
obs-cli -H "$OBS_HOST" -P "$OBS_PORT" -p "$OBS_PASSWORD" scene switch "$SCENE_NAME" &>/dev/null
obs-cli -H "$OBS_HOST" -P "$OBS_PORT" -p "$OBS_PASSWORD" record start &>/dev/null

# ───────────────🖥️ Fullscreen Terminal ───────────────
wmctrl -r :ACTIVE: -b toggle,fullscreen

# ───────────────📥 Prompt for Username ───────────────
echo
read -p "Enter username to hunt: " TARGET
echo "[*] Target set to: $TARGET"
echo

# ───────────────🛰️ Run Maigret ───────────────
echo "[*] Starting Maigret OSINT scan..."
python3 "$MAIGRET_BIN" "$TARGET" -a --pdf -o "$OUTPUT_DIR" --print-errors | tee "$LOG_FILE"

# ───────────────📦 Stop OBS Recording ───────────────
echo
echo "[*] Stopping OBS recording..."
obs-cli -H "$OBS_HOST" -P "$OBS_PORT" -p "$OBS_PASSWORD" record stop &>/dev/null

# ───────────────✅ Wrap Up ───────────────
echo -e "\n\e[32m✔️  OSINT scan complete. Report saved to:\e[0m $LOG_FILE"
echo -e "\e[34m📹 Video saved in OBS default folder.\e[0m"
echo
