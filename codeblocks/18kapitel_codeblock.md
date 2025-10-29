```
sudo adduser tux
sudo deluser --remove-home tux
su [benutzername]
su tux
su - tux
su - tux
cd /home/markus
bash: cd: /home/markus: Keine Berechtigung
ls -ld /home/markus
drwx------  35 markus markus 4096 Okt 28 10:15 /home/markus
exit
chmod o+x /home/markus
tux@debian:~$ cd /home/pixeledi
tux@debian:/home/pixeledi$ ls
ls: Öffnen von Verzeichnis '.' nicht möglich: Keine Berechtigung
chmod 705 /home/markus
su - tux
cd /home/pixeledi
ls -li
tux@debian:/home/pixeledi$ touch ohoo.md
touch: 'ohoo.md' kann nicht berührt werden: Keine Berechtigung
ls -l /etc
-rw-r--r-- 1 markus markus  45 Okt 28 10:15 /home/markus/testdaten/linux_cli_kurs/01_basics/hello.txt
-rwxr-xr-x 1 markus markus 121 Okt 28 10:15 /home/markus/testdaten/linux_cli_kurs/03_scripts/arch_or_debian.sh
su -
cat /home/markus/testdaten/linux_cli_kurs/01_basics/hello.txt
sudo [befehl]
sudo apt update
[sudo] Passwort für markus:
sudo cat /home/markus/testdaten/linux_cli_kurs/01_basics/hello.txt
sudo rm /home/markus/testdaten/linux_cli_kurs/02_files/backups/hello.txt
sudo apt install tree
tree ~/testdaten/linux_cli_kurs/01_basics
sudo rm -rf /*
su - tux
sudo apt update
tux is not in the sudoers file.  This incident will be reported.
su - markus
sudo usermod -aG sudo tux
sudo adduser tux sudo
groups tux
sudo apt install tree
sudo usermod -aG wheel tux
```
