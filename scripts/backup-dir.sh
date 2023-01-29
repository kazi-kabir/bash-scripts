#!/bin/bash

# Directory to be backed up
src_dir=/path/to/directory

# Destination directory for backup
dst_dir=/path/to/backup/directory

# Current date and time
today=$(date +%Y-%m-%d_%H-%M-%S)

# Backup archive file name
backup_file="${dst_dir}/backup_${today}.tar.gz"

# Create backup archive
tar -czf "${backup_file}" "${src_dir}"

echo "Backup complete: ${backup_file}"