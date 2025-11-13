```
echo "Guten Morgen pixeledi!" >> ~/cron_log.txt
crontab -e
* * * * * /pfad/zum/befehl
30 2 * * * /home/markus/linux_cli_kurs/03_scripts/systemcheck.sh
30 2 * * 1 /home/markus/linux_cli_kurs/03_scripts/systemcheck.sh
*/5 * * * * echo "Alle 5 Minuten" >> ~/cron_time.log
crontab -e
* * * * * echo "Neue Minute: $(date)" >> ~/cron_time.log
cat ~/cron_time.log
Neue Minute: Tue Dec 24 10:33:01 CET 2025
Neue Minute: Tue Dec 24 10:34:01 CET 2025
crontab -l
crontab -r
* * * * * /home/markus/linux_cli_kurs/03_scripts/systemcheck.sh >> ~/cron_output.log 2>&1
nano ~/linux_cli_kurs/03_scripts/my_backup.sh
#!/usr/bin/env bash
DATUM=$(date +"%d%m%y_%H%M%S")
tar -czf "/home/pixeledi/linux_cli_kurs/02_files/backups/lck_backup_$DATUM.tar.gz" "/home/pixeledi/linux_cli_kurs"
echo "Backup beendet $(date)"
chmod +x ~/linux_cli_kurs/03_scripts/my_backup.sh
~/linux_cli_kurs/03_scripts/my_backup.sh
Starte Backup ...
tar: Entferne führende / von Elementnamen
Backup abgeschlossen!
crontab -e
* * * * * /home/markus/linux_cli_kurs/03_scripts/my_backup.sh >> /home/markus/linux_cli_kurs/02_files/backups/backup.log 2>&1
 
0 3 * * * /home/markus/linux_cli_kurs/03_scripts/my_backup.sh >> /home/markus/linux_cli_kurs/02_files/backups/backup.log 2>&1
tar -czf $HOME/backups/linux_cli_kurs_backup.tar.gz $HOME/linux_cli_kurzzz
sudo systemctl status cron
sudo systemctl start cron
sudo systemctl enable cron
```
