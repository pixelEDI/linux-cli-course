# 🐧 pixeledi Linux CLI Cheatsheet

## 💻 Terminal & Shell

| Befehl | Beschreibung | Beispiel |
|--------|---------------|-----------|
| `date` | Aktuelles Datum und Uhrzeit | `date` |
| `cal` | Kalender anzeigen | `cal 2025` |
| `clear` | Terminal leeren | `clear` |
| `history` | Verlauf der Befehle anzeigen | `history` |
| `!!` | Letzten Befehl erneut ausführen | `!!` |
| `Ctrl + R` | Nach einem alten Befehl suchen | `Ctrl + R` und Suchwort |


## 📂 Navigation & Dateiverwaltung

| Befehl | Beschreibung | Beispiel |
|--------|---------------|-----------|
| `cd` | Verzeichnis wechseln | `cd /home/username/Projekt`, `cd ~`, `cd ..` |
| `ls` | Dateien und Ordner auflisten | `ls -a` *(inkl. versteckter Dateien)* |
| `pwd` | Aktuelles Verzeichnis anzeigen | `pwd` |
| `mkdir` | Neues Verzeichnis erstellen | `mkdir Projekte` |
| `rm` | Datei oder Verzeichnis löschen | `rm datei.txt`, `rm -r Verzeichnis` |
| `touch` | Neue Datei erstellen | `touch test.txt` |
| `mv` | Datei/Ordner verschieben oder umbenennen | `mv test.txt backup/` |
| `cp` | Datei/Ordner kopieren | `cp datei.txt kopie.txt` |


## ✏️ Texteditoren

| Editor | Beschreibung | Beispiel |
|--------|---------------|-----------|
| `nano` | Einfacher Terminal-Editor | `nano datei.txt` |
| `vim` | Mächtiger Editor mit Modi | `vim datei.txt` |
| `Ctrl + O` / `Ctrl + X` | In `nano`: Speichern / Beenden | — |
| `:wq` / `:q!` | In `vim`: Speichern & Beenden / Abbrechen | — |


## 📜 Dateiinhalt anzeigen & durchsuchen

| Befehl | Beschreibung | Beispiel |
|--------|---------------|-----------|
| `cat` | Dateiinhalt anzeigen | `cat text.txt` |
| `tac` | Datei rückwärts anzeigen | `tac text.txt` |
| `rev` | Zeichenreihenfolge jeder Zeile umkehren | `rev text.txt` |
| `grep` | Text in Dateien suchen | `grep "Muster" datei.txt` |
| `more` | Datei seitenweise anzeigen | `more datei.txt` |
| `less` | Erweiterte Anzeige (mit Navigation) | `less datei.txt` |
| `head` | Erste Zeilen anzeigen | `head -n 20 datei.txt` |
| `tail` | Letzte Zeilen anzeigen | `tail -n 20 datei.txt` |
| `sort` | Textzeilen alphabetisch sortieren | `sort datei.txt` |
| `uniq` | Doppelte Zeilen entfernen | `sort datei.txt \| uniq` |
| `wc` | Zeilen, Wörter, Zeichen zählen | `wc -l datei.txt` |


## 🔁 Pipes & Umleitungen

- **`|`** – Ausgabe eines Befehls als Eingabe für den nächsten  
  Beispiel: `ls | grep "txt"`
- **`>`** – Ausgabe in Datei umleiten (überschreibt)  
  Beispiel: `echo "Hallo" > datei.txt`
- **`>>`** – Ausgabe an Datei anhängen  
  Beispiel: `echo "Neue Zeile" >> datei.txt`
- **`<`** – Datei als Eingabe verwenden  
  Beispiel: `sort < datei.txt`
- **`2>`** – Fehlerausgabe umleiten  
  Beispiel: `grep "Fehler" test.txt 2> fehler.log`
- **`tee`** – Ausgabe speichern **und** gleichzeitig anzeigen  
  Beispiel: `ls | tee ausgabe.txt`


## 🔍 Suchen & Finden

| Ziel | Befehl |
|------|---------|
| Alle Dateien | `find . -type f` |
| Alle Verzeichnisse | `find . -type d` |
| `.txt`-Dateien | `find . -name "*.txt"` |
| Nach Änderungszeit | `find . -mtime -1` *(innerhalb 1 Tag)* |
| Dateien mit Inhalt | `grep -r "Suchbegriff" .` |
| Kombination | `find . -name "*.log" | xargs grep "Error"` |


## 🧾 Logs anzeigen

| Befehl       | Beschreibung          | Beispiel                                       |
| ------------ | --------------------- | ---------------------------------------------- |
| `journalctl` | Systemd-Logs anzeigen | `journalctl -b`, `journalctl -f` |
| `dmesg`      | Kernel-Logs anzeigen  | `dmesg | grep "Error"` |


## 🔐 Dateirechte & Eigentümer

| Befehl | Beschreibung | Beispiel |
|--------|---------------|-----------|
| `ls -l` | Zeigt Dateirechte an | `ls -l` |
| `chmod` | Rechte ändern | `chmod 644 datei.txt` |
| `chown` | Besitzer ändern | `sudo chown user:group datei.txt` |


## 👥 Benutzer & Administratorrechte

| Befehl | Beschreibung | Beispiel |
|--------|---------------|-----------|
| `whoami` | Aktueller Benutzer | `whoami` |
| `su` | Benutzer wechseln | `su andereruser` |
| `sudo` | Befehle mit Adminrechten ausführen | `sudo apt update` |
| `adduser` | Neuen Benutzer anlegen | `sudo adduser test` |


## ⚙️ Umgebungsvariablen & Aliase

| Befehl | Beschreibung | Beispiel |
|--------|---------------|-----------|
| `printenv` | Alle Umgebungsvariablen anzeigen | `printenv` |
| `echo $PATH` | Inhalt der PATH-Variable | `echo $PATH` |
| `alias` | Aliase anzeigen oder setzen | `alias ll='ls -l --color=auto'` |
| `unalias` | Alias entfernen | `unalias ll` |


## 🧠 Systeminformationen

| Befehl | Beschreibung | Beispiel |
|--------|---------------|-----------|
| `uname -a` | Kernel- & Systeminfos | `uname -a` |
| `uptime` | Laufzeit & Last | `uptime`, `uptime -s` |
| `top` | Prozesse live anzeigen | `top` |
| `htop` | Farbiger Prozessmonitor | `htop` |
| `free -h` | Speicherübersicht | `free -h` |
| `df -h` | Festplattenbelegung | `df -h` |
| `du -sh` | Größe eines Verzeichnisses | `du -sh /home/user` |


## 🕒 Aufgaben & Automatisierung

| Befehl | Beschreibung | Beispiel |
|--------|---------------|-----------|
| `crontab -e` | Cronjobs bearbeiten | `crontab -e` |
| `crontab -l` | Cronjobs anzeigen | `crontab -l` |
| Beispiel | Täglich Backup um 2 Uhr | `0 2 * * * /home/user/backup.sh` |


## 💬 Textverarbeitung mit `sed` & `awk`

| Tool | Beschreibung | Beispiel |
|------|---------------|-----------|
| `sed` | Text ersetzen oder löschen | `sed 's/alt/neu/g' datei.txt` |
| `awk` | Daten zeilenweise verarbeiten | `awk '{print $1}' datei.txt` |
