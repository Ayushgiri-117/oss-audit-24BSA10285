# OSS Audit — Git

**Student:** Ayush Giri  
**Roll Number:** 24BSA10285  
**Course:** Open Source Software — VITyarthi  
**Chosen Software:** Git  
**License:** GNU General Public License v2 (GPL v2)

---

## About This Project

This repository contains five shell scripts written as part of the Open Source Audit capstone project. Each script demonstrates practical Linux and bash scripting skills while exploring the open-source software Git.

---

## Scripts

| Script | Name | What it does |
|--------|------|--------------|
| script1.sh | System Identity Report | Displays system info, kernel version, uptime, and OS license |
| script2.sh | FOSS Package Inspector | Checks if git is installed, prints version and a philosophy note |
| script3.sh | Disk and Permission Auditor | Loops through system directories and reports permissions and sizes |
| script4.sh | Log File Analyzer | Reads a log file, counts keyword matches, prints last 5 matches |
| script5.sh | Manifesto Generator | Asks 3 questions and generates a personalised open source manifesto |

---

## Requirements

- Linux system (Ubuntu/Debian recommended)
- Bash shell
- Git installed: `sudo apt install git`

---

## How to Run

**1. Clone this repository**
```bash
git clone https://github.com/yourusername/oss-audit-24BSA10285
cd oss-audit-24BSA10285
```

**2. Make scripts executable**
```bash
chmod +x *.sh
```

**3. Run each script**
```bash
# Script 1 — System Identity
./script1.sh

# Script 2 — Package Inspector
./script2.sh

# Script 3 — Disk Auditor
./script3.sh

# Script 4 — Log Analyzer (needs a log file)
./script4.sh /var/log/syslog error

# Script 5 — Manifesto Generator (interactive)
./script5.sh
```

---

## Dependencies

- `lsb_release` — for distro name (pre-installed on Ubuntu)
- `git` — install with `sudo apt install git`
- `du`, `ls`, `uname`, `uptime` — standard Linux utilities, pre-installed
