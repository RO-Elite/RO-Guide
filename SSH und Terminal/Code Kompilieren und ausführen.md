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
Im Benutzer-Ordner, genannt `~`, gibt es eine Datei namens `.bashrc`. Vielleicht ist sie auch leer.
Wir haben euch eine beispielhafte .bashrc, umbenannt als bashrc.txt [[bashrc.txt|hier]] hinterlegt.
Mit dieser .bashrc lässt sich mit einem kurzen Befehl code zur ausführbaren Binary machen.
```shell
cd &&
curl https://raw.githubusercontent.com/RO-Elite/RO-Guide/master/_Media/bashrc.txt >> .bashrc &&
echo "source ~/.bashrc" >> ~/.bash_profile &&
source .bashrc
```
C -> Binary
```shell
roas meinCode.s
```
Assembly -> Binary
```shell
roc meinCode.c
````

4. die entstandene Binary meinCode ausführen (siehe [[Code Kompilieren und ausführen#Ausführen der Binary und Ausgeben von r0|hier]]).
