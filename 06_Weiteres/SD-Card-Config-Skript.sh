#!/bin/bash
echo -e "Kopieren der Dateien auf die SD Karte\n"
echo -e "man muss sich im <plnx-proj-root> Verzeichnis befinden\n"
DIRECTORY=""
# ins petalinux-projekt wechseln
while [ ! -d "$DIRECTORY" ]
do
	read -e -p "<plnx-proj-root> Pfad angeben: " DIRECTORY
done
cd $DIRECTORY
# altes System entfernen
sudo chown -R $USER:$USER /media/$USER/rootfs/
rm -r /media/$USER/BOOT/*
rm -rf /media/$USER/rootfs/*
# Dateien kopieren
cp images/linux/BOOT.BIN /media/$USER/BOOT/
cp images/linux/image.ub /media/$USER/BOOT/
cp images/linux/rootfs.tar.gz /media/$USER/rootfs/
# rootfs entpacken
cd /media/$USER/rootfs
sudo tar xvf rootfs.tar.gz
# SD-Karte aushängen
sudo umount /media/$USER/BOOT
sudo umount /media/$USER/rootfs
