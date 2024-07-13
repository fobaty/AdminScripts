#!/bin/bash

CACHE_DIR="/path/to/cache"

find $CACHE_DIR -type f -mtime +7 -exec rm -f {} \;
