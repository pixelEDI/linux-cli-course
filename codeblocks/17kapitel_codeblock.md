```
ls -l 01_basics/hello.txt
-rw-r--r-- 1 markus markus 18 Okt 24 18:42 hello.txt
ls -l 02_files/sample.sh
ls -ld 01_basics
ls -l 03_scripts
-rwxr-xr-x 1 markus markus 135 Okt 24 18:43 fortune.sh
chmod u+x 02_files/sample.sh
chmod g-w 02_files/sample.sh
chmod u+x,g-w 02_files/sample.sh
chmod 754 02_files/sample.sh
sudo chown markus:markus 02_files/sample.sh
df -Th 02_files/sample.sh
mkdir -p ~/linux_cli_kurs
cd ~/linux_cli_kurs
bash /pfad/zu/deinem/setupskript.sh
sudo chown nobody:nobody 02_files/sample.sh
chmod 777 02_files/sample.sh
chmod: changing permissions of '02_files/sample.sh': Operation not permitted
sudo chown markus:markus 02_files/sample.sh
```
