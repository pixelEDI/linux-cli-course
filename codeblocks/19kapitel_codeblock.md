```
echo $USER
echo $HOME
echo $PWD
markus
/home/markus
/home/markus/linux_cli_kurs
printenv | less
MEINORDNER="/home/markus/linux_cli_kurs"
echo $MEINORDNER
/home/markus/linux_cli_kurs
cd $MEINORDNER
nano ~/.bashrc
export MEINORDNER="/home/markus/linux_cli_kurs"
source ~/.bashrc
echo $MEINORDNER
/home/markus/linux_cli_kurs
alias ll='ls -lah --color=auto'
echo "alias ll='ls -lah --color=auto'" >> ~/.bashrc
source ~/.bashrc
alias td='cd ~/linux_cli_kurs'
alias ftxt='find ~/linux_cli_kurs -type f -name "*.txt"'
alias
unalias td
unalias -a
export DATEN=/home/markus/linux_cli_kurs
alias dls='ls $DATEN'
printenv | grep DATEN
alias dls
dls
   ```

## Mini-Test

**Aufgabe:**
Lege einen Alias `gotest` an, der dich direkt in das Verzeichnis
`~/linux_cli_kurs/03_scripts` bringt.
Teste anschließend, ob der Alias funktioniert.

## Fazit

* Umgebungsvariablen speichern wichtige Informationen über deine Shell.
* Mit `export` machst du sie global verfügbar.
* In der `~/.bashrc` kannst du sie dauerhaft speichern.
* Aliase sind praktische Kurzbefehle für häufige Kommandos.
* Mit `source ~/.bashrc` werden Änderungen sofort aktiv.

Wenn du das alles beherrschst, bist du auf dem besten Weg zu einem effizienten und persönlichen Linux-Terminal.

\newpage
```
