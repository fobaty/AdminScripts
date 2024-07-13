#!/bin/bash

SOURCE_DIR="/path/to/important/directory"
BACKUP_DIR="/path/to/backup/location"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_NAME="backup-$TIMESTAMP.tar.gz"

tar -czf $BACKUP_DIR/$BACKUP_NAME $SOURCE_DIR
