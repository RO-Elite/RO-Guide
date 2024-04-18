 #tipps

> [!danger] Platzlimitierung
> [Die User Disk Quota also der maximal verfügbare Speicherlatz pro Nutzer liegt bei einem GB, also schiebt da nicht tonnenweise eigene Inhalte hin. Der Assembly Code ist nur wenige KB groß.](https://support.rbg.informatik.tu-darmstadt.de/wiki/de/doku/computerhilfe/quota)
## 1. FTP in Termius
Vorraussetzungen:
- [[Termius statt PuTTY!|Termius]] installiert
- Server in Termius erstmals eingerichtet

1. SFTP auswählen
![[Pasted image 20240328143040.png]]
2. Ersten Host wählen
![[Pasted image 20240328143200.png]]
3. Eigenen Rechner auswählen
![[Pasted image 20240328143408.png]]
4. Server auswählen
![[Pasted image 20240328143529.png]]
5. Dateien per Drag and Drop bewegen
## 2. SCP direkt auf der lokalen Kommandoziele (Linux&MacOS)
Dateien versenden:
```shell
scp -r MeinLokalerOrdner [TU-ID]@clientssh-arm.rbg.informatik.tu-darmstadt.de:MeinRemoteOrdner
```
Dateien empfangen:
```shell
scp -r [TU-ID]@clientssh-arm.rbg.informatik.tu-darmstadt.de:MeinRemoteOrdner MeinLokalerOrdner
```
## 3. Github
Die notwendigen Git-Befehle fürs Terminal werden wir hier nicht nochmal durchgehen, beachtet allerdings, dass ihr für das Authentifizieren bei GitHub statt dem Passwort einen sogenannten ["Classic Token"](https://github.com/settings/tokens) erstellen müsst, den ihr dann immer statt dem Passwort eingebt.
## 4. Copy Pasta
Den Code einfach copy pasten