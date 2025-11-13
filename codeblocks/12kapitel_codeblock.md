```
cat 01_basics/distros.txt
cat 01_basics/doesnotexist.txt
cat: 01_basics/doesnotexist.txt: Datei oder Verzeichnis nicht gefunden
cat
cat 02_files/colors.txt > favorite_colors.log
cat favorite_colors.log
cat 02_files/colors.txt > 01_basics/distros.txt
cat 01_basics/distros.txt
echo "Manjaro" >> 01_basics/distros.txt
echo "PopOS" >> 01_basics/distros.txt
ls 06_invoices/*.ods > invoice_list.txt
ls 06_invoices/*.ods >> invoice_list.txt
cat 01_basics/doesnotexist.txt 2> errors.log
cat 01_basics/doesnotexist.txt > errors.log
cat 01_basics/doesnotexist.txt 2> errors.log
ls 06_invoices/*.ods > output.log 2> errors.log
```
