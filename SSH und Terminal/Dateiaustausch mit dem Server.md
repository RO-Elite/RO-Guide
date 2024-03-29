 #tipps

> [!danger] Platzlimitierung
> [Die User Disk Quota liegt bei 1 GB, also schiebt da nicht tonnenweise eigene Inhalte hin. Der Assembly Code ist nur wenige KB groß.](https://support.rbg.informatik.tu-darmstadt.de/wiki/de/doku/computerhilfe/quota)

## 1. FTP in Termius
Vorraussetzungen:
- [[Termius]] installiert
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
1. [[SSH-Key erstellen]]
2. Key auf Github hochladen
## 4. Copy Pasta
Den Code einfach copy pasten