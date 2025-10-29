```
cd ~/linux_cli_kurs/02_files
cat colors.txt | sed 's/Blau/Azurblau/'
sed -i 's/Blau/Azurblau/' colors.txt
sed -i '/Braun/d' colors.txt
sed -i -e 's/Grün/Dunkelgrün/' -e 's/Gelb/Sonnengelb/' colors.txt
awk '{print NR, $1}' big_list.txt
cd ~/linux_cli_kurs/07_mixed_files
awk -F, '{print "System:", $1, "| Status:", $2}' 005_apt_get_me_out.csv
awk 'length($1) > 8' big_list.txt
```
