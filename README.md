# backup-script
[![License: MIT](https://img.shields.io/npm/l/react)](https://github.com/alyssongleyson/backup-script/blob/main/LICENSE)

This is a Bash script designed to automate file backups on Linux systems. It creates versioned, incremental backups of the user's Documents folder using rsync, and maintains a latest symlink pointing to the most recent backup. It also logs each backup operation with a timestamp.