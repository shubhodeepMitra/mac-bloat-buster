
# 💪 Mac Cleanup to Reduce System Data

This guide summarizes the **essential steps** I used to clean my MacBook Air M1 and reduce "System Data" from **~70GB to ~35GB**.

Focus: **lightweight**, **practical**, and **storage-saving**. 🚀

---

## 🧹 Key Cleanup Areas

| Component | Cleanup Action |
|:---|:---|
| Homebrew Caches | `brew cleanup --prune=all` |
| User Caches | `rm -rf ~/Library/Caches/*` |
| npm Cache | `npm cache clean --force` |
| Maven Cache | `rm -rf ~/.m2/repository` |
| Gradle Cache | `rm -rf ~/.gradle/caches` |
| Xcode Derived Data | `rm -rf ~/Library/Developer/Xcode/DerivedData` |
| Old iOS Device Backups | Delete via Finder or `~/Library/Application Support/MobileSync/Backup` |
| System Logs | `sudo rm -rf /private/var/log/*` |
| Unused Homebrew Formulae | `brew autoremove` |

✅ These steps safely removed **30+ GB** of hidden files.

---

## 🛠️ System Cleanup Script

**File:** `mac_auto_cleanup.sh`

---

## ⏰ Automate with Cron Job

You can schedule this script to run automatically every week using `cron`:

1. Open your crontab editor:

```bash
crontab -e
```

2. Add the following line to schedule the script every Sunday at 10 AM:

```bash
0 10 * * 0 /path/to/your/mac_auto_cleanup.sh
```

(Replace `/path/to/your/` with the actual path where your `mac_auto_cleanup.sh` script is located.)

✅ Now, the cleanup will run automatically without needing manual execution!

---

# 🚀 Goal

> "Minimal clutter, faster Mac, maximum usable storage."

✅ This helped me reclaim over **35GB** of lost storage!
