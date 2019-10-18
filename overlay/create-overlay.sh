#!/bin/bash

# The permissions must match DEST_DIR on the device, otherwise this module will
# overwrite the set permissions.
#
# You can check this by running the following command on the device (if DEST_DIR="/"):
#
#    stat -c %a /
#
sudo install -d -m 755 -g root -o root rootfs_overlay

# Create directory structure
sudo install -d -m 755 -g root -o root rootfs_overlay/etc
sudo install -d -m 755 -g root -o root rootfs_overlay/usr/bin
sudo install -d -m 755 -g root -o root rootfs_overlay/usr/share/app

# Create sample files
sudo touch rootfs_overlay/etc/app.conf
sudo touch rootfs_overlay/usr/bin/app
sudo touch rootfs_overlay/usr/share/app/data.txt

# You would typically chmod above files to have the appropriate mode in a production environment
