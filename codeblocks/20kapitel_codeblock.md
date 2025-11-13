```
./backup.sh
echo "Hallo Welt"
ls -l
pwd
nano ~/systemcheck.sh
#!/bin/bash
# Ein einfaches Systemstatus-Skript
# Autor: Markus (pixeledi)
# Version: 1.1

echo "=============================="
echo "  Systemstatus - Schnellüberblick"
echo "=============================="
echo

echo "Hostname:"
hostname
echo

echo "Angemeldeter Benutzer:"
whoami
echo

echo "Aktuelles Verzeichnis:"
pwd
echo

echo "Festplattenübersicht:"
df -h | grep -E '^(/dev|Dateisystem)'
echo

echo "Arbeitsspeicher:"
free -h
echo

echo "=============================="
echo "Fertig! ($0 wurde erfolgreich ausgeführt)"
echo "=============================="
chmod +x ~/systemcheck.sh
cd ~
./systemcheck.sh
#!/bin/bash
bash systemcheck.sh
./systemcheck.sh
#!/usr/bin/env bash
echo $PATH
/usr/local/bin:/usr/bin:/bin:/usr/games
which pwd
/usr/bin/pwd
pixel-edi-ist-der-beste
bash: pixel-edi-ist-der-beste: command not found
export PATH=$HOME:$PATH
/usr/local/bin:/usr/bin:/bin
/home/markus:/usr/local/bin:/usr/bin:/bin
nano ~/.bashrc
export PATH="$HOME:$PATH"
export PATH="$HOME/linux_cli_kurs/03_scripts:$PATH"
source ~/.bashrc
systemcheck.sh
ln -s ~/linux_cli_kurs/03_scripts/systemcheck.sh ~/linux_cli_kurs/03_scripts/systemcheck
nano ~/linux_cli_kurs/03_scripts/cleanup.sh
#!/bin/bash
echo "Bereinige Logs in ~/linux_cli_kurs/07_mixed_files ..."
rm -f ~/linux_cli_kurs/07_mixed_files/*.log
echo "Fertig!"
chmod +x ~/linux_cli_kurs/03_scripts/cleanup.sh
cleanup.sh
```
