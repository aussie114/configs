##
# Mounting mtp device
lsusb
gio mount "mtp://[usb:001,001]/"
cd /run/user/1000//gvfs/
##
# Copy to mtp device
gio copy SOURCE DESTINATION

##
# Rtorrent
backspace add torrent
ctrl+S start torrent
ctrl+D stop or delete stopped torrent
ctrl+K close torrent

##
# Restore usb stick to normal
lsblk
sudo wipefs --all /dev/sdX
sudo cfdisk /dev/sdX
	dos
	new > all > primary
	write
sudo mkfs.ext4 -L NAME /dev/sdX1
sudo mkdir -p /mnt/NAME
sudo mount /dev/sdX1 /mnt/NAME
sudo chown admin:admin /mnt/archive/
sudo chmod 755 /mnt/archive/
