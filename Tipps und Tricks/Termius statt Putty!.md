#tipps 
# Was ist Termius?
Termius ist ein **closed-source** SSH and SFTP client für Windows, MacOS und Linux. 
Wer open source will, sollte also lieber beim normalen Terminal bleiben, unter Windows ist es den Kompromiss unserer Ansicht nach allerdings gegenüber PUTTY wert.
# Free vs. Paid
Es gibt ein Free Tier bei Termius, der für die meisten ausreichen sollte.
Wer mehr will, kann sich mit GitHub Pro auch Termius Pro holen. (siehe unten)
Mehr Details unter https://termius.com/pricing
# Installation
## Windows
Über die [Website](https://termius.com/free-ssh-client-for-windows) herunterladen und installieren.
## Linux 
Termius hat 
- ein .deb Package auf der [Website](https://termius.com/free-ssh-client-for-linux) (Debian, Ubuntu und angehörige)
- ein Snap Package im [Snap Store](https://snapcraft.io/termius-app) 
- ein Package im [AUR](https://aur.archlinux.org/packages/termius).  (community-maintained)
- und ein [Nix-Package](https://search.nixos.org/packages) (community-maintaned)
Leider kein Flatpak oder .rpm Package. (Stand Juli 2024)
## MacOS
Über die [Website](https://termius.com/free-ssh-client-for-mac-os) (Intel & Apple Silicon) oder via [Homebrew](https://formulae.brew.sh/cask/termius).
> [!danger]  Achtung
> Solltet ihr [[Dateiaustausch mit dem Server#1. FTP in Termius|Dateien über Termius hin-und her schicken wollen]], dann solltet ihr Termius über die [Website](https://termius.com/download/macos), und nicht über Homebrew installieren, sonst bekommt ihr Probleme mit Homebrew's Sandbox, die nicht auf lokale Dateien zugreifen darf.
## GitHub Pro for free für Studis!
Mit dem sogenannten GitHub Student Developer Pack kann man sich kostenlos GitHub Pro holen. Hier ein Step-By-Step Guide:
1. https://education.github.com/pack öffnen
2. Mit GitHub einloggen
3. Registrierungsprozess durchlaufen (etwa 10 Minuten)
>[!important] Wichtig: Als Verifizierung den Studienausweis hochladen, nicht die Immatrikulationsbescheinigung!
4. Warten, bis die Verifizierung erfolgt ist (bis zu 24h)
5. Unter https://account.termius.com/student den GitHub Account mit Pro verbinden