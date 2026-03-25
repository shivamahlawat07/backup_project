#!/bin/bash

# source and destination
SOURCE="/home/$USER/Documents"
DEST="/home/$USER/backup"

# create folder if not exists
mkdir -p $DEST

# date format
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# backup file name
FILENAME="backup_$DATE.tar.gz"

# log file
LOGFILE="$DEST/backup.log"

# Create backup
tar -czf $DEST/$FILENAME $SOURCE

# check success or failure
if [ $? -eq 0 ]; then
    echo "$(date) - Backup SUCCESS: $FILENAME" >> $LOGFILE
else
    echo "$(date) - Backup FAILED" >> $LOGFILE
fi

# auto delete old backups (7 days)
find $DEST -type f -name "*.tar.gz" -mtime +7 -delete

# log deletion
echo "$(date) - Old backups deleted" >> $LOGFILE
