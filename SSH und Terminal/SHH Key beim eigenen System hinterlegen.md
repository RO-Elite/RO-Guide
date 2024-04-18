Der Key kann bei [[Termius statt PuTTY!|Termius]] einfach in Einstellungen > Keychain hinterlegt werden.
Bei Nutzung ohne Termius muss der Private-Key noch dem sogenannten "Agent" hinzugefügt werden:
## MacOS
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
  IdentityFile ~/.ssh/id_rsa
```
3. Privaten SSH-Key zum ssh-agent hinzufügen
```shell
ssh-add --apple-use-keychain ~/.ssh/id_rsa
```
## Linux
1. SSH-Agenten starten
```shell
eval "$(ssh-agent -s)"
```
2. SSH-Key zum ssh-agent hinzufügen
```shell
ssh-add ~/.ssh/id_rsa
```
## Windows
1. PowerShell als Administrator öffnen. SSH-Agent starten
```powershell
Get-Service -Name ssh-agent | Set-Service -StartupType Manual
Start-Service ssh-agent
```
2. Terminal als nicht-Administrator öffnen und privaten SSH-Key hinzufügen
```PowerShell
ssh-add c:/Users/YOU/.ssh/id_rsa
```