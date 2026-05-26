#!/bin/bash

if [ $# -eq 0 ]; then 
	echo "Error: no argument provided"
	exit 1
fi

LOG_DIR=$1

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

ARCHIVE_DIR="logs_archive"
mkdir -p $ARCHIVE_DIR

tar -czf ${ARCHIVE_DIR}/logs_archive_${TIMESTAMP}.tar.gz $LOG_DIR

echo "Archive created: $TIMESTAMP" >> ${ARCHIVE_DIR}/archive_log.txt

echo "Done! Archive saved to ${ARCHIVE_DIR}/logs_archive_${TIMESTAMP}.tar.gz"q
