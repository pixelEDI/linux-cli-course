#!/usr/bin/env bash

DATUM=$(date +"%d%m%y_%H%M%S")
tar -czf "/home/pixeledi/linux_cli_kurs/02_files/backups/lck_backup_$DATUM.tar.gz" "/home/pixeledi/linux_cli_kurs"
echo "Backup beendet $(date)"

