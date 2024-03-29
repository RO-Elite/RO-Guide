#tipps #bash

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
#### Shortcut: C -> Binary
```shell
arm-linux-gnueabihf-gcc -o meineDatei meineDatei.c
```
### Shortcut für C/Assembly -> Binary
In eurem Benutzer-Home-Ordner, genannt `~`, gibt es eine Datei namens `.bashrc`. In diese könnt ihr zwei Methoden legen, die 
[[profile.txt]]
#todo