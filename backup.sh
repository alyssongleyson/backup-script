#!/bin/bash

###################################################################
# Script Name:	backup.sh
# Description:	Script for backup automation
# Author:	Álysson Gleyson da Silva
###################################################################

# Directories
source_dir="$HOME/Documents"
backup_dir="$HOME/backup"
log_file="$HOME/backup_log.txt"

# Data and time
current_date=$(date +%Y/%m/%d_%H:%M:%S)
backup_dir_with_date="$backup_dir/backup_$current_date"

# Create backup directory
mkdir -p "$backup_dir_with_date"

# Check if the 'latest' directory exists
if [ -d "$backup_dir/latest" ]; then
    # Performs incremental backup (rsync) with link to the most recent directory
    rsync -av --link-dest="$backup_dir/latest" "$source_dir" "$backup_dir_with_date"
else
    # If the 'latest' directory does not exist, just copy the files
    rsync -av "$source_dir" "$backup_dir_with_date"
fi
