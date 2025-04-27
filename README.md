# backup-script
[![License: MIT](https://img.shields.io/npm/l/react)](https://github.com/alyssongleyson/backup-script/blob/main/LICENSE)

This is a Bash script designed to automate file backups on Linux systems. It creates versioned, incremental backups of the user's Documents folder using rsync, and maintains a latest symlink pointing to the most recent backup. It also logs each backup operation with a timestamp.

## Features

- Automated backups with timestamped directories

- Incremental backups using rsync with --link-dest

- Automatically manages a latest symlink for quick access to the most recent backup

- Logs each backup operation to a log file

## Default Paths

- Source: $HOME/Documents

- Backup: $HOME/backup

- Log file: $HOME/backup_log.txt

## Requirements

- Bash shell
- Linux host system

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com:alyssongleyson/backup-script.git
   cd backup-script.git
   ```

2. Make the script executable:
	```bash
	chmod +x backup-script.sh
	```

3. Run the script:
	```bash
	./backup-script.sh
	```
	