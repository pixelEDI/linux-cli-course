```
echo $USER
echo $HOME
echo $PWD
markus
/home/markus
/home/markus/linux_cli_kurs
printenv | less
pwd
echo $PWD
MEINORDNER="/home/markus/linux_cli_kurs"
echo $MEINORDNER
/home/markus/linux_cli_kurs
cd $MEINORDNER
echo $MEINORDNER
nano ~/.bashrc
export MEINORDNER="/home/markus/linux_cli_kurs"
source ~/.bashrc
echo $MEINORDNER
/home/markus/linux_cli_kurs
alias ll='ls -lah --color=auto'
grep "Apfel" 02_files/big_list.txt
alias gr='grep "Apfel" ~/linux_cli_kurs/02_files/big_list.txt'
gr
echo "alias gr='grep \"Apfel\" ~/linux_cli_kurs/02_files/big_list.txt'" >> ~/.bashrc
source ~/.bashrc
alias gr='grep "Apfel" 02_files/big_list.txt'
alias gr='grep "Apfel" /home/markus/linux_cli_kurs/02_files/big_list.txt'
alias dls='ls $MEINORDNER'
alias
unalias dls
unalias -a
```
