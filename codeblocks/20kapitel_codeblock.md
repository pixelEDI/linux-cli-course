```
./backup.sh
nano ~/systemcheck.sh
#!/bin/bash
# Ein einfaches Systemstatus-Skript
# Autor: pixeledi 
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
cd ~/
./systemcheck.sh
#!/bin/bash
bash systemcheck.sh
./systemcheck.sh
#!/usr/bin/env bash
#!/usr/bin/env bash
#!/usr/bin/env python3
print("Hallo Linux, ich bin ein Python-Skript!")
chmod +x hello.py
./hello.py
#!/usr/bin/env python3
echo $PATH
/usr/local/bin:/usr/bin:/bin:/usr/games
export PATH=$HOME:$PATH
mv ~/systemcheck.sh ~/systemcheck
ln -s ~/systemcheck.sh ~/systemcheck
cd /etc
systemcheck
nano ~/.bashrc
export PATH="$HOME:$PATH"
source ~/.bashrc
nano ~/linux_cli_kurs/03_scripts/cleanup.sh
#!/bin/bash
echo "Bereinige Logs in ~/linux_cli_kurs/07_mixed_files ..."
rm -f ~/linux_cli_kurs/07_mixed_files/*.log
echo "Fertig!"
chmod +x ~/linux_cli_kurs/03_scripts/cleanup.sh
~/linux_cli_kurs/03_scripts/cleanup.sh
nano ~/.bashrc
export PATH="$HOME/linux_cli_kurs/03_scripts:$PATH"
source ~/.bashrc
cleanup.sh
mv cleanup.sh cleanup
ln -s ~/linux_cli_kurs/03_scripts/cleanup.sh ~/linux_cli_kurs/03_scripts/cleanup
```
