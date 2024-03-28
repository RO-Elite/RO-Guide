#todo-omid 
## Für den ARM-Server
1. Terminal öffnen/ Git Bash unter Windows
2. Key generieren
```shell
ssh-keygen -b 4096 -t rsa
```
Dateinamen und Passphrase festlegen oder durch ENTER drücken skippen
3. Public Key ausgeben lassen
```shell
cat DATEINAME.pub
```
Diesen kopieren.
4. [Email anfordern](https://support.rbg.informatik.tu-darmstadt.de/), um einen Link zu bekommen. Dort wird der Public Key eingefügt.
![[Pasted image 20240328153730.png]]

## Für Github
1. Terminal öffnen/ Git Bash unter Windows
2. SSH-Key generieren
```shell
ssh-keygen -t ed25519 -C "your_email@example.com"
```
Dateinamen und Passphrase festlegen oder durch ENTER drücken skippen
3. Die nächsten Schritte hängen vom Betriebssystem ab.
### MacOS
1. SSH-Agent starten
```shell
eval "$(ssh-agent -s)"
```
2. Bei MacOS Sierra 10.12.2 oder neuer muss die ssh-config noch bearbeitet werden. 
```shell
nano ~/.ssh/config
```
