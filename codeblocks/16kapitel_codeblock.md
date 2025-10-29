```
grep "Rot" 02_files/colors.txt
grep "Rot" 02_files/*.txt 02_files/backups/*.txt
grep -i "rot" 02_files/colors.txt
ls 02_files | grep -i "colors"
grep -n "Arch" 04_arch_is_the_best/manifesto.txt
grep -w "Rot" 02_files/colors.txt
grep --color=auto -n "Rot" 02_files/colors.txt
grep -r "Arch" 04_arch_is_the_best
grep -r "Mint" 07_mixed_files
grep -A 1 "WARN" 07_mixed_files/008_logs_of_the_penguin.log
grep -B 1 "WARN" 07_mixed_files/008_logs_of_the_penguin.log
grep -C 1 "WARN" 07_mixed_files/008_logs_of_the_penguin.log
[INFO] Starte Pinguin-Prozesse...
[WARN] Kaffeevorrat kritisch niedrig!
[OK] Bash läuft stabil.
grep -c "Ananas" 02_files/big_list.txt
grep -o "Apfel" 02_files/big_list.txt | wc -l
grep -l "Rot" 02_files/*.txt
grep -L "Rot" 02_files/*.txt
grep -v "Blau" 02_files/colors.txt
grep -E "^[A-Z]" 02_files/colors.txt
grep -E "(Rot|Blau)" 02_files/colors.txt
grep -E "[aeiou]{2}" 02_files/passwd_sample.txt
ls 06_invoices | grep "^00"
ls -t 07_mixed_files | head -n 5 | grep "\.txt$"
```
