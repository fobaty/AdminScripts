#!/bin/bash

DB_USER="your_db_user"
DB_PASS="your_db_password"
DB_NAME="your_db_name"
BACKUP_FILE="/path/to/backup/db_backup.sql"

mysql -u $DB_USER -p$DB_PASS $DB_NAME < $BACKUP_FILE
