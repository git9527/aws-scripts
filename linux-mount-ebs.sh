#!/bin/sh
NAME=$1

if [ -z "$NAME" ]; then
	NAME="nvme0n1"
fi

lsblk
mkfs -t xfs /dev/$NAME
mount /dev/$NAME /mnt
chown ubuntu: /mnt
UUID=`blkid | grep xfs | cut -d'"' -f 2`
echo "UUID=${UUID}  /mnt  xfs  defaults,nofail  0  2" >> /etc/fstab
df -h
