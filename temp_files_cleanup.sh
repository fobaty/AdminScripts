#!/bin/bash

TEMP_DIR="/path/to/temp/directory"

find $TEMP_DIR -type f -mtime +30 -exec rm -f {} \;
