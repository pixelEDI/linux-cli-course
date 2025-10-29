```
echo "Guten Morgen Markus!" >> ~/cron_log.txt
crontab -e
* * * * * /pfad/zum/befehl
0 5 * * 1 /home/markus/linux_cli_kurs/03_scripts/fortune.sh
crontab -e
* * * * * echo "Neue Minute: $(date)" >> ~/cron_time.log
cat ~/cron_time.log
Neue Minute: Tue Oct 28 10:33:01 CET 2025
crontab -l
crontab -r
*/5 * * * * echo "Alle 5 Minuten" >> ~/cron_time.log
* * * * * /home/markus/linux_cli_kurs/03_scripts/systemcheck.sh >> ~/cron_output.log 2>&1
nano ~/linux_cli_kurs/03_scripts/my_backup.sh
#!/usr/bin/env bash
echo "Starte Backup ..."
DATUM=$(date +"%Y-%m-%d_%H-%M-%S")
tar -czf $HOME/backups/linux_cli_kurs_backup_$DATUM.tar.gz $HOME/linux_cli_kurs
echo "Backup abgeschlossen!"
DATUM=$(date +"%Y-%m-%d_%H-%M-%S")
tar -czf $HOME/backups/linux_cli_kurs_backup_$DATUM.tar.gz $HOME/linux_cli_kurs
echo "Backup abgeschlossen!"
mkdir -p ~/backups
chmod +x ~/linux_cli_kurs/03_scripts/my_backup.sh
~/linux_cli_kurs/03_scripts/my_backup.sh
Starte Backup ...
tar: Entferne führende / von Elementnamen
Backup abgeschlossen!
crontab -e
* * * * * /home/markus/linux_cli_kurs/03_scripts/my_backup.sh >> /home/markus/backups/backup.log 2>&1
0 3 * * * /home/markus/linux_cli_kurs/03_scripts/my_backup.sh >> /home/markus/backups/backup.log 2>&1
tar -czf $HOME/backups/linux_cli_kurs_backup.tar.gz $HOME/linux_cli_kurzzz
```
