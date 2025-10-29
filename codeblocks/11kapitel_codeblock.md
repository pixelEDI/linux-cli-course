```
cat 01_basics/hello.txt
cat 01_basics/hello.txt 01_basics/opinion.txt
cat 01_basics/hello.txt 01_basics/opinion.txt > 02_files/combined.txt
cat 01_basics/today.txt >> 02_files/combined.txt
less 01_basics/distros.txt
sudo journalctl | less
sudo journalctl -b | less
sudo journalctl -p err | less
sudo journalctl -p warning | less
sudo journalctl -u ssh | less
sudo journalctl -xe | less
sudo journalctl -p err | tac | less

echo "LinuxRocks2025" | rev
echo "backup.tar.gz" | rev | cut -d'.' -f1 | rev
head 01_basics/distros.txt
tail 01_basics/distros.txt
head -n 5 01_basics/distros.txt
tail -n 3 01_basics/distros.txt
tail -f /var/log/syslog
sudo journalctl -f
ls -l 06_invoices | tail -n 5
wc 01_basics/distros.txt
cat 01_basics/distros.txt | wc -l
ls 01_basics/*.txt | wc -l
cat 01_basics/distros.txt
echo "----"
sort 01_basics/distros.txt
sort -f 01_basics/distros.txt
sort -r 02_files/colors.txt
sort 02_files/big_list.txt | uniq
sort 02_files/big_list.txt | uniq -d
sort 02_files/big_list.txt | uniq -c
      3 Ananas
     10 Apfel
      3 Banane
      4 Birne
      ...
sort 02_files/big_list.txt | uniq -c | grep Ananas
      3 Ananas
ls 06_invoices | sort -n
ls 06_invoices | sort -nr | head -n 5
sort 01_basics/distros.txt > 01_basics/distros_sorted.txt
```
