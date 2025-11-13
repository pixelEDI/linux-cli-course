```
befehl1 | befehl2
ls 06_invoices/*.ods | wc -l
cat 02_files/colors.txt | sort
cat 02_files/colors.txt | sort | tac
cat colors.txt | tr 'a' 'A'
cat colors.txt | tr '[:lower:]' '[:upper:]'
cat colors.txt | tr '[:upper:]' '[:lower:]'
cat 01_basics/03_animals.txt | tr -d '0-9'
cat 01_basics/03_animals.txt | tr -cd '[:alpha:]\n'
cat 01_basics/03_animals.txt | tr -d '0-9'
cat 01_basics/03_animals.txt | tr -cd '[:alpha:]\n'
ls 07_mixed_files | tr -d '0-9.' | sort | uniq | head
ls 07_mixed_files | tr -d '0-9._' | sort | uniq | head
aptgetmeoutcsv
bashandthefuriouslog
chaostheorytxt
ls 06_invoices | wc -l
cat 02_files/big_list.txt | sort | uniq
cat 02_files/colors.txt 01_basics/03_animals.txt 02_files/big_list.txt | tee all_data.txt 
sort 02_files/colors.txt | tee sorted_colors.txt | head -5
```
