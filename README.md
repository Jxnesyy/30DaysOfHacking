# 🛡️ 30 Days of Hacking – TikTok Cybersecurity Series

Welcome to **30 Days of Hacking**, an open-source, hands-on ethical hacking challenge designed to showcase real CLI tools with style — all filmed and automated for TikTok.

This repository features CLI scripts, OSINT automations, and capture-ready setups to help beginners and content creators learn, build, and grow their cybersecurity skills in public.

---

## 📆 Days Complete

* ✅ **Day 01**: `hunter.sh` – TikTok OSINT CLI (Maigret + OBS Automation)
* 🔜 Day 02: \[Redacted until release]

---

## 📌 Table of Contents

* [Overview](#-overview)
* [Features](#-features)
* [Getting Started](#-getting-started)
* [Usage](#-usage)
* [TikTok Challenge](#-tiktok-challenge)
* [Roadmap](#-roadmap)
* [License](#-license)

---

## 🔍 Overview

This repo documents one CLI-based ethical hacking project per day, with a focus on:

* Open Source Intelligence (OSINT)
* Bash scripting
* Automation
* Video-ready content (OBS integration)

---

## 🚀 Features

* Automated username scanning with `maigret`
* OBS-controlled recording using `obs-cli`
* Bash script (`hunter.sh`) for hands-free hacking + capture
* Terminal aesthetic + automated reports saved with timestamps

---

## 🛠️ Getting Started

Follow these steps to clone and run Day 01 from your terminal:

```bash
# 1. Clone the repo
git clone https://github.com/Jxnesyy/30DaysOfHacking.git
cd 30DaysOfHacking

# 2. Set up Python + Maigret environment
pyenv virtualenv 3.11.8 maigret311
pyenv activate maigret311
pip install maigret

# 3. Make the main script executable
chmod +x hunter.sh

# 4. Start the hunt!
./hunter.sh
```

**Note:** OBS must be installed and running with WebSocket plugin (default port 4455). The scene "Day01 TikTok Osint" should exist.

---

## 🎯 Usage

Once you run `./hunter.sh`, the flow will:

1. Prompt you with: `Type the magic words to begin...`
2. Start OBS recording
3. Set your OBS scene
4. Launch `maigret` on the username defined inside the script (default is `jxnesyy`)
5. Save the scan results to `reports/USERNAME_TIMESTAMP.txt`
6. Stop OBS recording

### Example Output

```bash
✅ Hunt complete. Report saved to: reports/jxnesyy_20250701_164059.txt
```

### Preview Screenshot

*(Add a preview screenshot or video link here once your TikTok is published)*

---

## 🎥 TikTok Challenge

Join the public challenge and post your scans with style:

1. Clone this repo:
   `git clone https://github.com/Jxnesyy/30DaysOfHacking.git`
2. Run the tool:
   `cd 30DaysOfHacking && ./hunter.sh`
3. Post your results on TikTok with the hashtag:
   `#30DaysOfHacking`

Tag [@Jxnesyy](https://tiktok.com/@jxnesyy) for reposts 🔥

---

## 🧠 Roadmap

| Day | Tool        | Description                           |
| --- | ----------- | ------------------------------------- |
| 01  | `hunter.sh` | OSINT via `maigret` + OBS auto-record |
| 02  | TBA         | Coming soon                           |
| ... | ...         | ...                                   |
| 30  | `???`       | Final boss level 😈                   |

---

## 📂 Repo Structure

```bash
30DaysOfHacking/
├── hunter.sh              # Main automation script
├── .python-version        # Pyenv version file
├── README.md              # This file
├── CONTENT_CALENDAR.md   # Planning notes
├── reports/               # Auto-generated Maigret results
├── scripts/               # (Optional future tools)
└── LICENSE
```

---

## 📜 License

MIT © [Jxnesyy](https://github.com/Jxnesyy)

---

### 💡 Suggestions?

Open a GitHub issue or submit a pull request — contributions are welcome!

> “Hack with purpose. Post with power.” — @Jxnesyy
