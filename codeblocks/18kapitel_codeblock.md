```
su tux
markus@linux:~/linux_cli_kurs$ su tux
Password:
tux@linux:/home/markus/linux_cli_kurs$
su - tux
markus@linux:~$ su - tux
Password:
tux@linux:~$
exit
ls -ld /home/*
drwxr-xr-- 35 markus markus 4096 Okt 25 11:05 markus
drwxr----- 21 tux    tux    4096 Okt 25 11:09 tux
cd /home/tux
bash: cd: /home/tux: Permission denied
cat /etc/sudoers
cat: /etc/sudoers: Permission denied
sudo cat /etc/sudoers
su - 
root@linux:~#
ls /home
cd /home/markus
ls -l
echo "test" > /home/tux/neuedatei.txt
sudo apt update
tux is not in the sudoers file. This incident will be reported.
su - markus
sudo usermod -aG sudo tux
sudo adduser tux sudo
groups tux
tux : tux sudo
su - tux
sudo apt update
sudo usermod -aG wheel tux
```
