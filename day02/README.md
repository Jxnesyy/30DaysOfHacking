📡 Day 2: Subdomain Enumeration – Subhunt.sh

**Challenge Goal:**  
Use `Sublist3r` to uncover hidden subdomains tied to a domain.

---

## 🎯 Tool Used
- [`Sublist3r`](https://github.com/aboul3la/Sublist3r): Fast subdomain enumeration tool using multiple search engines.

---

## 📥 Installation

Make sure you’re using the correct Python virtual environment with all required dependencies:

```bash
pyenv activate maigret311
pip install requests dnspython
⚙️ How to run
cd day02
./subhunt.sh
Type the magic words:

➤ Hunt them
Then enter your target domain, for example: nasa.gov

🧪 Output
Results are saved to: day02/reports/<domain>_subs.txt
You’ll also see live results in the terminal if you use simplescreenrecorder
