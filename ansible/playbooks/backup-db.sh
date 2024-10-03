#!/bin/sh

date=$(date +"%d-%m-%Y")
time=$(date +"%H%M%S")
db_name=test_db
backup_file_path=/root/backup/test_db_${date}_${time}.sql


echo "dump ..."
mysqldump -u root --single-transaction $db_name > $backup_file_path
echo "dump ... DONE"