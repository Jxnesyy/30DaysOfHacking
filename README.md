# 🛡️ 30 Days of Hacking – By Jxnesyy
A cyber warfare challenge blending OSINT, automation, and TikTok-ready scripts.

30 tools. 30 days. Fully documented. Built with Kali Linux, grit, and good intent.

🚀 **Live GitHub Pages:** [View Interactive Guide](https://jxnesyy.github.io/30DaysOfHacking/)

---

## 📅 Daily Challenges

| Day | Tool              | Script           | Description |
|-----|-------------------|------------------|-------------|
| 01  | Maigret           | `hunter.sh`      | OSINT reconnaissance tool scanning 300+ websites for usernames. |
| 02  | Sublist3r         | `subhunt.sh`     | Subdomain enumeration combining passive and brute-force techniques.|
| 03  | Nmap              | `portscope.sh`   | Port scanning for services and identifying attack surfaces.|
| 04  | Wget              | `webspider.sh`   | Website spidering and offline mirroring using recursive Wget.|
| 05  | Dirb              | `filehunt.sh`    | Directory and file brute-forcing to discover hidden entry points.|
| 06  | WhatWeb           | `techpeek.sh`    | Web technology fingerprinting for headers, CMS, and frameworks.|
| 07  | Nikto             | `nikto.sh`       | Web Server Vulnerability Scanner.|

Each day includes:
- ✅ Step-by-step CLI interaction
- 🎥 TikTok-ready recordings
- 🗂️ Organized reports saved to `/reports/`
- 🌐 HTML-based walkthroughs via GitHub Pages

---

## 🧠 Mission

This repo is designed for:
- 🧑‍💻 Aspiring hackers who want structured practice
- 🎬 Content creators automating their process
- 🛠️ Pentesters building a real-world toolkit

## ⚙️ Setup Instructions

Clone the repo:
```bash
git clone https://github.com/Jxnesyy/30DaysOfHacking.git
cd 30DaysOfHacking
```

Make scripts executable:
```bash
chmod +x day0*/scripts/*.sh
```

Run a challenge:
```bash
cd day01/scripts
./hunter.sh
```

## 🧩 Dependencies
- Kali Linux (Rolling)
- Python 3.11+
- Tools: `maigret`, `sublist3r`, `nmap`, `subbrute`, `wget`, `tee`

## 🎬 TikTok Content Strategy
- Minimal prompt scripts
- High-contrast visuals
- Auto-saved outputs
- Built for OBS + asciinema + svg-term-cli

## 🪪 License
MIT – Use, remix, credit.

## ✍️ Author
Built by **Jxnesyy** — Cybersecurity Consultant, TikTok Creator, OSINT Hunter
