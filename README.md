# Linux Backup Automation Script

This script automates backups using Bash.

## Features
-Backup any directory
- Compress into .tar.gz
- Timestamped backups
- Logging system
- Auto-delete old backups (7 days)
- Cron job support

## Usage
chmod +x backup.sh
./backup.sh

## Cron Example
0 2 * * * /home/youruser/backup-project/backup.sh

## Tech Used
- Bash
- Linux (cron, tar, find)
