#guide
Ein SSH Key besteht immer aus dem public und dem private key. 
Public key und private key gehören zueinander; Das heißt, sie werden gleichzeitig erzeugt und normalerweise auch am gleichen Ort gespeichert. Der public Key wird beim zu kontaktierenden Server hinterlegt, der private key wird nie mit anderen Systemen geteilt.
# Für den SSH-Server der TU Darmstadt
## PuTTY
Wir empfehlen wärmstens [Termius statt PuTTY!](Termius%20statt%20PuTTY!.md) wenn es allerdings unbedingt PuTTY sein muss, gibt es dazu ein Guide im Moodle.
## In Termius
Termius kann keys schnell und einfach selbst erstellen.
![Pasted image 20240416141933](Pasted%20image%2020240416141933.png)
## Im Terminal
1. Terminal öffnen / Git-Bash in Windows
2. Key generieren
```shell
ssh-keygen -b 4096 -t rsa
```
Dateinamen und Passphrase festlegen oder durch `ENTER` drücken überspringen
3. Public Key ausgeben lassen
```shell
cat DATEINAME.pub
```
Diesen kopieren.
5. [Public SSH-Key beim TU-Server hinterlegen](Public%20SSH-Key%20beim%20TU-Server%20hinterlegen.md)