```
rm dateiname.txt
cd linux_cli_kurs/02_files
ls
rm shells.txt
ls
rm -i passwd_sample.txt
rm: remove regular file 'passwd_sample.txt'? y
rm 01_basics/opinion.txt
rm 01_basics/hello.txt 01_basics/today.txt
cd linux_cli_kurs/02_files
mkdir testleer
ls
rm -d testleer
ls
rm -r backups
rm -ri 04_arch_is_the_best
rm: remove regular file 'manifesto.txt'? y
rm: remove regular file 'sticker.txt'? y
rm: remove regular file 'update_commands.txt'? y
rm -rf backups
mv <quellordner> <zielordner>
cd ~/linux_cli_kurs
ls
mv 03_scripts 02_files/
ls 02_files
mkdir 01_basics/colors
echo -e "rot\ngrün\nblau" > 01_basics/colors/colors.txt

mkdir 01_basics/colors2
echo -e "rot\ngrün\nblau" > 01_basics/colors2/colors.txt
mv 01_basics/colors/ 02_files/
mv 01_basics/colors2 02_files
mv 04_arch_is_the_best 04_arch_legacy
mkdir moved_stuff
mv 01_basics 05_hidden_stuff moved_stuff/
ls moved_stuff
mv <alter_name> <neuer_name>
cd ~/linux_cli_kurs/02_files
ls
ls_output.txt  passwd_sample.txt  sample.sh  shells.txt
mv sample.sh backup_test.sh
ls
# Ausgabe:
# backup_test.sh  ls_output.txt  passwd_sample.txt  shells.txt
mv 02_files/passwd_sample.txt 02_files/backups/passwd_backup.txt
ls 02_files/backups
# Ausgabe:
# hello.txt  passwd_backup.txt
cp <quelle> <ziel>
cd ~/linux_cli_kurs/02_files
ls
ls_output.txt  passwd_backup.txt  shells.txt
cp shells.txt shells_copy.txt
ls
#  ls_output.txt  passwd_backup.txt  shells.txt  shells_copy.txt
cp shells.txt backups/
ls backups
# hello.txt  passwd_backup.txt  shells.txt
cp empty.log passwd_sample.txt sample.sh backups/
ls backups
# empty.log  hello.txt  passwd_sample.txt  sample.sh  shells.txt
cp -r 02_files 02_files_backup
ls 02_files_backup
cp -r 02_files/* 01_basics/backups/
cp -r 02_files 01_basics/backups/
ls 01_basics/backups/
```
