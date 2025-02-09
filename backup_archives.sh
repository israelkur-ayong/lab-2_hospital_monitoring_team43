#!/bin/bash
GROUP_NUMBER=43
ARCHIVE_DIR="archived_logs_group$GROUP_NUMBER"
REMOTE_USER="Joe"
REMOTE_HOST="a4f57979145b.c66578f8.alu-cod.online"
REMOTE_DIR="/home/"
mkdir -p "$ARCHIVE_DIR"
mv heart_rate_log.txt_* "$ARCHIVE_DIR/"
scp -r "$ARCHIVE_DIR" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"
echo "Backup completed successfully. Archived logs have been moved to $ARCHIVE_DIR and backed up to $REMOTE_HOST."
