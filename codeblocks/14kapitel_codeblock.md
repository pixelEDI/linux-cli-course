```
echo *
cd 01_basics
echo *.txt
rm 02_files/*.log
mv 02_files/*.txt 02_files/backups/
cat 01_basics/*.txt > 02_files/all_texts.txt
ls 07_mixed_files/00[1-3]_*.txt
ls 07_mixed_files/00[45]*.log
ls 07_mixed_files/00[4-8]*.log
ls 07_mixed_files/*[a-f]*.txt
ls 07_mixed_files/*[m-z]*.txt
ls 07_mixed_files/00[!1]*.txt
echo ~
cd ~
echo ~anna
echo ~hund
ls ~/Documents
ls ~/Desktop/testdaten
{element1,element2,element3}
echo {rot,grün,blau}
rot grün blau
mkdir 02_files/{bilder,dokumente,videos}

mkdir 02_files/bilder 02_files/dokumente 02_files/videos
cp 02_files/{colors.txt,big_list.txt} 02_files/backups/
mv 02_files/{bilder,videos} 02_files/backups/
touch 02_files/test_{1..5}.txt
test_1.txt
test_2.txt
test_3.txt
test_4.txt
test_5.txt
mkdir 02_files/section_{A..D}
section_A
section_B
section_C
section_D
echo {arch,debian}_{cool,stable}
arch_cool arch_stable debian_cool debian_stable
touch 02_files/{log,backup}_{01,02}.txt
log_01.txt
log_02.txt
backup_01.txt
backup_02.txt
$(( Ausdruck ))
echo $((10 + 7))
x=5
y=3
echo $((x * y))
anzahl=$(ls 06_invoices | wc -l)
echo "Aktuell gibt es $anzahl Rechnungen."
echo "Wenn wir jeden Tag 5 neue hinzufügen, sind es in drei Tagen $((anzahl + 3 * 5))."
for datei in 06_invoices/*.ods; do
    echo "Verarbeite: $datei"
done
Verarbeite: 06_invoices/001_7d9d0e3a.ods  
Verarbeite: 06_invoices/002_93b4a6c1.ods  
Verarbeite: 06_invoices/003_cab1d2e9.ods  
...
echo Hallo Markus wie geht es dir?
echo "Hallo Markus, wie geht es dir?"
echo 'Heute ist $(date)'
Heute ist $(date)
echo "Heute ist $(date)"
Heute ist Mittwoch, 21. Oktober 2015, 04:42:07 CEST
echo "Dateiname ist \"info1.txt\" und liegt im Ordner testdaten."
Dateiname ist "info1.txt" und liegt im Ordner testdaten.
echo "Im Ordner 02_files liegen $(ls 02_files | wc -l) Dateien."
Im Ordner 02_files liegen 21 Dateien.
echo "Die zuletzt geänderte Datei ist: $(ls -t 02_files | head -n 1)"
Die zuletzt geänderte Datei ist: big_list.txt
echo "Benutzer: $(whoami), Arbeitsverzeichnis: $(pwd)"
Benutzer: pixeledi, Arbeitsverzeichnis: /home/markus/strenggeheimerpfad/arch/fanboy
```
