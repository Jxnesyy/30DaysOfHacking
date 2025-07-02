# 🕵️‍♂️ Day 06 – WhatWeb Fingerprinting

**Tool:** `whatweb.sh`  
**Category:** Web App Fingerprinting  
**Focus:** Identify technologies used on target websites (CMS, servers, plugins, etc.)

---

## 🔍 What is WhatWeb?

WhatWeb is a fast, modular scanner that identifies what technologies websites are using. It can detect:

- Web servers (Apache, Nginx, etc.)
- CMS (WordPress, Joomla, etc.)
- Frameworks (Django, React, Laravel)
- JavaScript libraries
- Hosting platforms
- Tracking systems (Google Analytics, etc.)

---

## ⚙️ How It Works

Under the hood, WhatWeb uses regex, plugins, and headers to fingerprint sites. It can:

- Passively scan without touching the target
- Aggressively test with custom headers
- Output results in JSON, XML, or CLI

---

## 🧪 Example Usage

```bash
./whatweb.sh

📥 Then enter your target domain (e.g., https://testphp.vulnweb.com) when prompted.

---

##  🧠 Why Use It?

Web fingerprinting helps you:

Understand the tech stack before exploiting vulnerabilities

Tailor attacks (e.g., WordPress exploits)

Spot outdated systems or unpatched CMS versions

---

##  🧰 Dependencies

Make sure whatweb is installed:

sudo apt install whatweb
