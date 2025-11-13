#!/usr/bin/env bash
#     _          _ _
#  _ __ (_)_  _____| | ___  __| (_)
# | '_ \| \ \/ / _ \ |/ _ \/ _` | |
# | |_) | |>  <  __/ |  __/ (_| | |
# | .__/|_/_/\_\___|_|\___|\__,_|_|
# |_|
# https://links.pixeledi.eu
#
# Linux CLI Kurs – Test-Setup | 10.2025
#
# Dieses Skript erstellt diverse Ordner und Dateien,
# die wir im Laufe des Kurses/Buches besprechen und bearbeiten.
#
# Anleitung:
# 1. Datei ausführbar machen
# 2. Am besten im Home-Ordner ablegen
# 3. Ausführen – und Spaß haben!
#
# chmod +x linux_cli_dummydata.sh
# cd ~
# ./linux_cli_dummydata.sh
#


set -e

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORK_DIR="$BASE_DIR/linux_cli_kurs"

echo "🐧 Erstelle Übungsumgebung im aktuellen Ordner:"
echo "   $WORK_DIR"
echo

mkdir -p "$WORK_DIR"
cd "$WORK_DIR"

mkdir -p \
  01_basics \
  02_files/backups \
  03_scripts \
  04_arch_is_the_best \
  05_hidden_stuff/.config \
  06_invoices

echo "📂 Ordnerstruktur erstellt"

echo "Hallo Linux-Welt! 🐧" > 01_basics/hello.txt
echo "Arch > Debian (nur Spaß 😜)" > 01_basics/opinion.txt
echo -e "Ubuntu\nDebian\nArch\nFedora\nMint" > 01_basics/distros.txt
date > 01_basics/today.txt

echo -e "root:x:0:0:root:/root:/bin/bash\nmarkus:x:1000:1000:Markus:/home/markus:/bin/bash" > 02_files/passwd_sample.txt
echo -e "drwxr-xr-x user users 4096 Desktop\n-rw-r--r-- user users 1234 notes.txt" > 02_files/ls_output.txt
echo -e "bash\nfish\nzsh\nash\ndash" > 02_files/shells.txt
echo "echo 'Ich liebe Linux!'" > 02_files/sample.sh
chmod +x 02_files/sample.sh
cp 01_basics/hello.txt 02_files/backups/hello.txt
touch 02_files/empty.log

# colors.txt (20 Farben)
cat <<'EOF' > 02_files/colors.txt
Rot
Blau
Grün
Gelb
Orange
Lila
Rosa
Türkis
Cyan
Magenta
Schwarz
Weiß
Grau
Braun
Beige
Oliv
Marineblau
Silber
Gold
Kupfer
EOF

# -----------------------------------------------
# Neue Datei: big_list.txt (60+ Einträge, teils doppelt)
# -----------------------------------------------
cat <<'EOF' > 02_files/big_list.txt
Apfel
Banane
Orange
Apfel
Kirsche
Mango
Melone
Birne
Pfirsich
Apfel
Traube
Erdbeere
Himbeere
Brombeere
Heidelbeere
Zitrone
Limette
Ananas
Kiwi
Feige
Dattel
Granatapfel
Passionsfrucht
Apfel
Banane
Orange
Papaya
Guave
Kokosnuss
Pflaume
Apfel
Birne
Mandarine
Nektarine
Apfel
Granatapfel
Mango
Melone
Erdbeere
Brombeere
Kirsche
Apfel
Apfel
Birne
Ananas
Kokosnuss
Zitrone
Feige
Kiwi
Mango
Apfel
Banane
Traube
Melone
Pfirsich
Birne
Kirsche
Pflaume
Apfel
Guave
Ananas
EOF

echo "📄 Datei 'big_list.txt' mit über 50 Einträgen (inkl. Duplikaten) erstellt."


# -----------------------------------------------
# Neue Datei: csv people
# -----------------------------------------------
cat <<EOF > 02_files/people.csv
id,name,role,shell,home
1,markus,admin,/bin/bash,/home/markus
2,anna,user,/bin/zsh,/home/anna
3,tom,user,/bin/bash,/home/tom
4,lara,admin,/bin/fish,/home/lara
EOF

# -----------------------------------------------
# Neue Datei: zum testen von grep 
# -----------------------------------------------
cat <<EOF > 02_files/greptest.txt
Protokoll
Prototyp
Karotte
Brot
Rot ist meine Lieblingsfarbe.
Ich liebe rotes Licht.
rot
ROT
EOF

# -----------------------------------------------
# Neue Datei: 03_animals.txt
# -----------------------------------------------
cat <<'EOF' > 01_basics/03_animals.txt
Hund1
Katze2
Maus3
Vogel4
Fisch5
Affe6
Tiger7
Panda8
Frosch9
Bär10
Elefant11
Giraffe12
Pinguin13
Koala14
Schlange15
Faultier16
Kamel17
Löwe18
Zebra19
Delfin20
EOF

echo "📄 Datei '03_animals.txt' mit Zahlen erstellt (zum Üben mit tr -d '0-9')."


# -----------------------------------------------
# Bash-Skripte mit Humor
# -----------------------------------------------
cat <<'EOF' > 03_scripts/arch_or_debian.sh
#!/usr/bin/env bash
if grep -qi "arch" /etc/os-release; then
    echo "🏹 Du nutzt Arch Linux — Gratulation, du bist elitär!"
elif grep -qi "debian" /etc/os-release; then
    echo "🐄 Du nutzt Debian — stabil, solide und bewährt."
else
    echo "🐧 Irgendein Linux, Hauptsache kein Windows!"
fi
EOF
chmod +x 03_scripts/arch_or_debian.sh

cat <<'EOF' > 03_scripts/fortune.sh
#!/usr/bin/env bash
FORTUNES=("Arch users never update — they upgrade constantly."
"Debian users reboot once per decade."
"Ubuntu: Because apt-get install coffee doesn't work yet."
"Linux: Where you fix problems you didn’t know you had.")
RANDOM_INDEX=$((RANDOM % ${#FORTUNES[@]}))
echo "${FORTUNES[$RANDOM_INDEX]}"
EOF
chmod +x 03_scripts/fortune.sh

echo "In Arch we trust." > 04_arch_is_the_best/manifesto.txt
echo "btw I use Arch." > 04_arch_is_the_best/sticker.txt
echo -e "pacman -Syu\napt update && apt upgrade\nemerge --sync\nzypper dup" > 04_arch_is_the_best/update_commands.txt

echo "alias btw='echo btw, I use Arch'" > 05_hidden_stuff/.bash_aliases
echo "SECRET=archrules" > 05_hidden_stuff/.config/settings.conf

ln -sf ../04_arch_is_the_best/manifesto.txt 01_basics/arch_link.txt

echo "🧾 Erstelle 300 Dummy-Rechnungen in 06_invoices ..."
for i in $(seq -f "%03g" 1 300); do
    UUID=$(uuidgen 2>/dev/null || cat /proc/sys/kernel/random/uuid)
    FILENAME="06_invoices/${i}_${UUID}.ods"
    echo "Invoice #$i" > "$FILENAME"
    echo "UUID: $UUID" >> "$FILENAME"
    echo "Customer: $(shuf -n1 -e 'ACME Corp' 'Debian Ltd' 'Arch Labs' 'Mint Media' 'Fedora Works')" >> "$FILENAME"
    echo "Amount: $((RANDOM % 900 + 100)) EUR" >> "$FILENAME"
    echo "Comment: $(shuf -n1 -e 'btw I use Arch' 'Keep it stable with Debian' 'Kernel panic incoming' 'sudo make me a coffee')" >> "$FILENAME"
done

echo "✅ 300 Rechnungsdateien erzeugt."

# -----------------------------------------------
# 7. Gemischte Dateien (07_mixed_files)
# -----------------------------------------------
echo "📦 Erstelle gemischte Testdateien in 07_mixed_files ..."

mkdir -p 07_mixed_files

cat <<'EOF' > 07_mixed_files/001_chaos_theory.txt
Das Leben findet einen Weg – besonders in Bash-Skripten.
EOF

cat <<'EOF' > 07_mixed_files/002_penguin_manifesto.md
# Manifest des Pinguins
Bleib cool. Bleib offen. Bleib Linux.
EOF

cat <<'EOF' > 07_mixed_files/003_hidden_kernel.ods
Dies ist keine echte Tabellenkalkulationsdatei, sondern ein Übungsplatzhalter.
EOF

cat <<'EOF' > 07_mixed_files/004_bash_and_the_furious.log
Fehler? Nein, nur unerwartete Features.
EOF

cat <<'EOF' > 07_mixed_files/005_apt_get_me_out.csv
System,Status
Debian,Stabil
Arch,Rolling
EOF

cat <<'EOF' > 07_mixed_files/006_return_of_the_shell.txt
Möge die Bash mit dir sein.
EOF

cat <<'EOF' > 07_mixed_files/007_the_text_strikes_back.md
## Episode VII – The Text Strikes Back
In einer weit, weit entfernten Shell...
EOF

cat <<'EOF' > 07_mixed_files/008_logs_of_the_penguin.log
[INFO] Starte Pinguin-Prozesse...
[WARN] Kaffeevorrat kritisch niedrig!
[OK] Bash läuft stabil.
EOF

cat <<'EOF' > 07_mixed_files/009_mint_condition.txt
Linux Mint – weil grün einfach besser ist.
EOF

cat <<'EOF' > 07_mixed_files/010_final_file.ods
Letzte Datei, versprochen. Oder doch nicht?
EOF

echo "✅ 10 gemischte Dateien in 07_mixed_files erstellt."


echo
echo "✅ Fertig!"
echo "Deine Linux-Übungsumgebung wurde erstellt unter:"
echo "   $WORK_DIR"
echo
echo "Have fun (c) pixeledi"
