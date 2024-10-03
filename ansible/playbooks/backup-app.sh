#!/bin/sh

date=$(date +"%d-%m-%Y")
time=$(date +"%H%M%S")
file_path=/var/www/html
backup_file_path=/root/backup/app_${date}_${time}.tar.gz

echo "backing up app ..."
tar -cvzf $backup_file_path $file_path
echo "backing up app ... DONE"