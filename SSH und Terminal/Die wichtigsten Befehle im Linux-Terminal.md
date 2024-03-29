#todo-dominik #bash 
## Was ist das, wo ich hier die Befehle eintippe?
Das, wo ihr die Befehle eintippen könnt, ist eine Shell, also eine Hülle um das Betriebssystem, mit der Ihr interagieren könnt, um das eigentliche Betriebssystem coole Dinge machen zu lassen, wie Dateien erstellen, rumnavigieren, und Assembly Code compilen und auszuführen.
Es gibt viele verschiedene Shells, die bekannteste ist [Bash](https://www.gnu.org/software/bash/), die benutzt auch der ARM Server. Es gibt aber auch noch viele weitere wie [ZSH](https://en.wikipedia.org/wiki/Z_shell) und [Fish](https://fishshell.com), aber die funktionieren für basic usage auch sehr ähnlich.


## Hier erstmal ein Cheatsheet:

| Befehl    | Bedeutung                                                                                                                 | Syntaxbeispiel                             | Beispielhaftes Ergebnis                                                                                                                  |
| --------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| ls        | anzeigen, welche Dateien im aktuellen Ordner existieren<br><br>mit -a kann man auch versteckte Dateien anzeigen,          | ls<br><br>ls -a                            | Downloads Documents meineDate.txt<br><br>.versteckteDatei.txt                                                                            |
| pwd       | Zeige den Ort an, an dem wir uns aktuell befinden                                                                         | pwd                                        | /Users/TimoKoch                                                                                                                          |
| cd        | change Directory - gehe in den genannten Ordner. nur cd bringt dich zurück in deinen Heimatordner, auch ~ genannt         | cd Downloads                               | Wir sind jetzt im Download Ordner.                                                                                                       |
| cd ..     | Gehe einen Ordner nach Oben                                                                                               | cd ..                                      | Wir sind jetzt wieder im Elternordner.                                                                                                   |
| touch     | Erstelle eine Datei                                                                                                       | touch meinText.txt                         | Jetzt existiert eine Textdatei, die man bearbeiten kann.                                                                                 |
| nano/nvim | bearbeite eine Textdatei (txt, c-code, assembly code)                                                                     | nano code.c                                | Jetzt ist das Dokument geöffnet und man kann die Datei mit der Tastatur bearbeiten. Das sieht dann so aus:<br>[[nano-3.2-826321080.png]] |
| cp        | Datei kopieren von einem ort an den anderen                                                                               | cp meineDatei.c Downloads/meineDatei.c     | die Datei meineDatei.c wurde vom aktuellen ordner in den Ordner mit dem Pfad Downloads/ kopiert.                                         |
| mv        | Datei verschieben von einem ort an den anderen                                                                            | mv meineDatei.c Downloads/meineDatei.c     | die Datei meineDatei.c wurde vom aktuellen ordner in den Ordner mit dem Pfad Downloads/ verschoben.                                      |
| rm        | Datei löschen.<br>Achtung: Für das Löschen von Ordnern muss man rm -rf Dateiname schreiben. Also "recursive" und "force". | rm meineDatei.txt<br><br>rm -rf meinOrdner | die Datei meineDatei.txt wurde gelöscht.<br><br>Der Ordner meinOrdner wurde gelöscht.                                                    |
| man       | eine Erklärung für einen Befehl anzeigen lassen                                                                           | man cp                                     | Es erscheint eine Erklärung, wie man den Befehl benutzt, Im Zweifelsfall einfach ChatGPT fragen.                                         |
## Nano vs. NVim
Es gibt viele Texteditoren fürs Terminal, aber für Newbies ist Nano der einfachste. Mit `nano meinText.c` die Datei öffnen, die Datei bearbeiten, und dann mit Ctrl/Cmd + o die Datei schreiben, und mit Ctrl/Cmd + x die Datei schließen. 
Vim, oder die heutige Version NVim funktioniert ein bisschen anders als ein moderner grafischer Text-Editor, kann aber mit ein bisschen Übung deutlich schneller sein
## Code compilieren und ausführen auf dem SSH-Server
Wir zeigen hier einmal die gesamte Pipeline für 
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

TODO

# Omids ash befehl
c und assembler compilen mit [[profile.txt]]
