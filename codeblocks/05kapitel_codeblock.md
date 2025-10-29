```
cd /
ls
/home/markus
cd ~
/home/anna
Desktop/
Dokumente/
Downloads/
Musik/
Bilder/
Öffentlich/
Vorlagen/
Videos/
cd ~          # Wechselt ins eigene Home-Verzeichnis
ls ~/Downloads  # Zeigt den Inhalt des Download-Ordners
/home/markus
pwd
/home/markus
/home/markus/Desktop
pwd -P
ls
Desktop  Dokumente  Downloads  Musik  Bilder  Videos
ls /etc
ls -l
-rw-r--r-- 1 markus users 2048 Okt 21 10:42 notes.txt
drwxr-xr-x 2 markus users 4096 Okt 20 17:00 Projekte
ls -a
.  ..  .bashrc  .config  Dokumente  Downloads
ls -lh
-rw-r--r-- 1 markus users 1.5K Okt 21 10:42 notes.txt
ls -lt
ls -lS
ls -R
ls -lah
man ls
cd <verzeichnisname>
cd Dokumente
cd
cd ~
/home/markus
cd ..
/home/markus/Dokumente -> /home/markus
cd -
cd /etc          # Gehe in den Systemkonfigurationsordner
cd ~/Downloads   # Gehe in den Download-Ordner des Benutzers
cd ..            # Eine Ebene nach oben
cd -             # Zurück ins vorherige Verzeichnis
/home/markus
cd pizzasammlung
cd ../markus/pizzasammlung
/home/markus
  pizzasammlung
    margherita
    funghi
  bilder
cd pizzasammlung/margherita   # wechselt in den Unterordner "margherita"
cd ..                         # geht eine Ebene nach oben zu /home/markus
cd bilder                     # wechselt in den Ordner "bilder"
cd /home/markus/pizzasammlung
cd /etc
cd /usr/share
```
