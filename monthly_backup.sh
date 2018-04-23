#!/bin/bash

GOOGLE_DRIVE="/Volumes/GoogleDrive/My Drive/"
BACKUPS_DIR="${GOOGLE_DRIVE}/Backups"

if [ -d "${GOOGLE_DRIVE}" -a -w "${GOOGLE_DRIVE}" ]; then
  mkdir -p "${BACKUPS_DIR}"
  tar -cvj -X exclusions -f "${BACKUPS_DIR}/monthly-$(date +%F).tgz" /Users/${USER}
else
  echo "No drive, no backup.  Sorry"
fi
