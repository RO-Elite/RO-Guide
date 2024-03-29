#tipps #todo-dominik
# Was ist Termius?
Termius ist ein **closed-source** SSH and SFTP client für Windows, MacOS und Linux. 
Wer open source will, sollte also lieber beim normalen Terminal bleiben, unter Windows ist es den Kompromiss unserer Ansicht nach allerdings gegenüber PUTTY wert.
# Free vs. Paid
...
Mehr Details unter https://termius.com/pricing
## GitHub Pro
...
Studienausweis benutzen, nicht die Immatrikulationsbescheinigung!
# Installation
## Windows
Über die [Website](https://termius.com/free-ssh-client-for-windows) herunterladen und installieren.
## Linux 
Termius hat 
- ein .deb Package auf der [Website](https://termius.com/free-ssh-client-for-linux) (Debian, Ubuntu und angehörige)
- ein Snap Package im [Snap Store](https://snapcraft.io/termius-app)
- und ein Package im [AUR](https://aur.archlinux.org/packages/termius).  (community-maintained)
Leider kein Flatpak oder .rpm Package. (Stand April 2024)
## MacOS
Über die [Website](https://termius.com/free-ssh-client-for-mac-os) (Intel & Apple Silicon) oder via [Homebrew](https://formulae.brew.sh/cask/termius).
> [!danger]  Achtung
> Solltet ihr [[Dateiaustausch mit dem Server#1. FTP in Termius|Dateien über Termius hin-und her schicken wollen]], dann solltet ihr Termius über die [Website](https://termius.com/download/macos), und nicht über Homebrew installieren, sonst bekommt ihr Probleme mit Homebrew's Sandbox, die nicht auf lokale Dateien zugreifen darf.
