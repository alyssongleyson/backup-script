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


