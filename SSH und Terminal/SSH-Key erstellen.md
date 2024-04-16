#guide
Ein SSH Key besteht immer aus dem public und dem private key. 
Public key und private key gehören zueinander; Das heißt, sie werden gleichzeitig erzeugt und normalerweise auch am gleichen Ort gespeichert. Der public Key wird beim zu kontaktierenden Server hinterlegt, der private key wird nie mit anderen Systemen geteilt und ist nur auf dem eigenen System hinterlegt.
# Für den SSH-Server der TU Darmstadt
## In Termius
Termius kann keys schnell und einfach selbst erstellen.
![[Pasted image 20240416141933.png]]
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
5. [[Public SSH-Key beim TU-Server hinterlegen]]
# (Für Github)
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
Falls die Datei noch nicht existiert, muss diese noch erstellt werden mit:
```shell
touch ~/.ssh/config
```
Zur Datei muss dann Folgendes hinzugefügt werden:
```text
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```
3. Privaten SSH-Key zum ssh-agent hinzufügen
```shell
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```
Zuletzt muss nur der Public Key auf [Github](https://github.com/settings/keys) hochgeladen werden.
## Linux
1. SSH-Agenten starten
```shell
eval "$(ssh-agent -s)"
```
2. SSH-Key zum ssh-agent hinzufügen
```shell
ssh-add ~/.ssh/id_ed25519
```
Zuletzt muss nur der Public Key auf [Github](https://github.com/settings/keys) hochgeladen werden.
## Windows
1. PowerShell als Administrator öffnen. SSH-Agent starten
```powershell
Get-Service -Name ssh-agent | Set-Service -StartupType Manual
Start-Service ssh-agent
```
2. Terminal als nicht-Administrator öffnen und privaten SSH-Key hinzufügen
```PowerShell
ssh-add c:/Users/YOU/.ssh/id_ed25519
```
Zuletzt muss nur der Public Key auf [Github](https://github.com/settings/keys) hochgeladen werden.