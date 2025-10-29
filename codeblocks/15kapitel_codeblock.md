```
find 02_files -name "*.txt"
find 02_files -type f -name "*.txt"
find 06_invoices -name "*.ods"
find 06_invoices -mtime -1
grep -r "Arch" 04_arch_is_the_best
find 07_mixed_files -name "*.log" -exec grep "Bash" {} \;
find 07_mixed_files -name "*.txt" | wc -l
find 07_mixed_files -name "*.log"
find 07_mixed_files -name "*.log" -delete
find 02_files -name "*.txt" | xargs -n 1 basename
colors.txt
passwd_sample.txt
ls_output.txt
```
