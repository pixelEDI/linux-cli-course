```
ls -l 01_basics/hello.txt
-rw-r--r-- 1 markus markus 18 Okt 24 18:42 hello.txt
ls -l ~
vim myscript.sh
echo "chmod tutorial"
ls -l myscript.sh
-rw-r--r--
chmod +x myscript.sh
-rwxr-xr-x
./myscript.sh
chmod -x myscript.sh
chmod u+x myscript.sh
-rwxr--r--
chmod g+x myscript.sh
-rw-r-xr--
chmod o+x myscript.sh
-rw-r--r-x
chmod u-x myscript.sh
-rw-r--r--
chmod 755 myscript.sh
chmod 400 datei.txt
chmod 500 datei.sh
chmod 555 datei.sh
sudo adduser tux2
su - tux2
exit
echo "Ich gehöre Markus" > rechte_testen.md
sudo chmdo 700 rechte_testen.md
sudo chown tux2 rechte_testen.md
sudo chown markus rechte_testen.md
```
