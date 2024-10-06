#tipps

Hier schauen wir einmal die gesamte Pipeline an für
C-Code (.c) -> Assembly Code (.s) -> Objektdatei (.o) -> Binary
(Also das, was am Ende ausgeführt wird).
#### C -> ARM32 Assembly
```shell
arm-linux-gnueabihf-gcc -S meineDatei.c
```
> [!danger] Achtung:
> Das -S muss mit großem S geschrieben werden, sonst gehts nicht.
#### ARM32 Assembly -> Objektdatei
```shell
arm-linux-gnueabihf-as -o meineDatei.o meineDatei.s
```
#### Objektdatei -> Binary
```shell
arm-linux-gnueabihf-gcc -o meineDatei meineDatei.o
```
### Ausführen der Binary und Ausgeben von r0
```shell
./meineDatei; echo $?
```

### Shortcut für C/Assembly -> Binary
Im Benutzer-Ordner, genannt `~`, gibt es zwei Konfigurationsdateien für Bash.

Im Folgenden werden wir mithilfe von einem Befehl unsere shortcuts in diese beiden Konfigurationsdateien reinschreiben.
Ab dann lässt sich der Code mit einem kurzen Befehl kompilieren.

> [!note] Hinweis
> Wer sicher gehen will, kann hier [hier](bashrc.txt) sehen, wie diese beiden shortcuts funktionieren.
#### Installation
1. Mit dem SSH-Server verbinden
2. Folgenden Befehl eintippen und auf enter drücken;
```bash
cd && curl https://raw.githubusercontent.com/RO-Elite/RO-Guide/master/_Media/bashrc.txt >> .bashrc && echo "source ~/.bashrc" >> ~/.bash_profile && source .bashrc
```
3. Ausprobieren!

C -> Binary
```shell
roas meineDatei.s
```
Assembly -> Binary
```shell
roc meineDatei.c
````

4. die entstandene Binary meineDatei ausführen (siehe [](Code%20Kompilieren%20und%20ausführen.md#Ausführen%20der%20Binary%20und%20Ausgeben%20von%20r0|hier)).
