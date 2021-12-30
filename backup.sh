#!/bin/bash
####################################
#
# Backup script.
#
####################################

# What to backup. 
backup_files1="/home/pzsrv/Zomboid/Saves/*"
backup_files2="/home/pzsrv/Zomboid/db/*"
backup_files3="/home/pzsrv/Zomboid/Server/*"
# backup_files4="/home/pzsrv/.steam/steamapps/common/Project Zomboid Dedicated Server"

# Where to backup to.
dest="/mnt/nasshare/pz-backup"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files1 to $dest/$archive_file"
echo "Backing up $backup_files2 to $dest/$archive_file"
echo "Backing up $backup_files3 to $dest/$archive_file"
# echo "Backing up $backup_files4 to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files1 $backup_files2 $backup_files3 

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest