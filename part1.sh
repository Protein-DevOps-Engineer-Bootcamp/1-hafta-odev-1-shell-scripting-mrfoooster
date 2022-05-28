#!/bin/bash

backup="/home"
dest="/mnt"
day=$(date +%A)
host=$(hostname -s)
archive="$host-$day.tgz"

echo "Back up $backup to $dest/$backup"
date
echo

tar czfP $dest/$archive $backup

echo 
echo "Backup probalby finished"
date



#593100089ab156418f52a6e6adb8dd73  mert-linux-Cumartesi.tgz
