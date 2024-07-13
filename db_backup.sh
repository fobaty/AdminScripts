#!/bin/bash

DB_USER="your_db_user"
DB_PASS="your_db_password"
DB_NAME="your_db_name"
BACKUP_DIR="/path/to/backup"

mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/db_backup_$(date +"%Y%m%d%H%M%S").sql
