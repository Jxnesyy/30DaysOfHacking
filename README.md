🛡️ 30 Days of Hacking — Challenge by Jxnesyy

Welcome to the ultimate 30-day cybersecurity challenge.  
Every day, a new tool. Every day, a new skill.  
Automated, beginner-friendly, TikTok-ready.

> 🔥 Built on Kali Linux + CLI tooling  
> 🎥 Auto-recorded with OBS for content creators  
> 🧠 Learn OSINT, recon, scanning, and more

---

## 📅 Challenge Format

| Day | Tool        | Skill             | Status |
|-----|-------------|------------------|--------|
| 1   | Maigret     | OSINT/Username Hunt | ✅ Complete |
| 2   | Sublist3r   | Subdomain Enumeration | 🚧 In progress |
| 3   | Nmap        | Port Scanning    | 🔜 Coming |

---

## 📌 Day 1 — OSINT Username Hunt

**Tool Used:** [`maigret`](https://github.com/soxoj/maigret)  
**Script:** `hunter.sh`  
**Goal:** Automatically find a username across 300+ sites (Reddit, GitHub, TikTok, etc.)

### 🔧 Setup

```bash
git clone https://github.com/Jxnesyy/30DaysOfHacking.git
cd 30DaysOfHacking
pyenv activate maigret311
chmod +x hunter.sh
🚀 Run the Hunt
bash
Copy
Edit
./hunter.sh
You’ll be asked to enter a username (like jxnesyy).
The tool will:

Start OBS recording

Run the Maigret scan

Save results to reports/

Stop recording when done ✅

📄 Example output: reports/jxnesyy_20250701_1400.txt

🎬 TikTok Recording (Optional)
If you have OBS CLI set up:

Automatically records the terminal during scan

Switches scenes and saves footage for posting

🤖 About hunter.sh
This is your one-command TikTok-ready automation.

✅ Launches Maigret scan

🎥 Starts + stops OBS recording

📂 Saves report in reports/

🧠 Great for educational or audit-style content

Run nano hunter.sh to customize the username, OBS scene, or file path.

💡 Beginner Friendly?
Yes. If you can run:

bash
Copy
Edit
./hunter.sh
…then you can do this challenge.

Even non-technical people can follow the results.

🧰 Requirements
Python + Pyenv

maigret

OBS Studio + obs-cli (optional, for auto-recording)

🌐 Web Version
Check out the project’s landing page:
https://jxnesyy.github.io/30DaysOfHacking

🧠 Why this matters
Cybersecurity isn’t just for hackers in hoodies.
This challenge teaches real-world tools to:

Audit your own online presence

Practice OSINT and recon techniques

Build professional habits

👤 Author
Built by @Jxnesyy

📜 License
MIT – free to use, modify, remix.
