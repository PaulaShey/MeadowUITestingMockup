#!/bin/sh

#  ci_post_clone.sh
#  Meadow UI Testing Mockup
#
#  Created by Paulina Grużewska on 01/09/2023.
# # Define paths
DOCC_ARCHIVE_PATH="${BUILD_DIR}/Meadow UI Testing Mockup.doccarchive"
TEMP_OUTPUT_PATH="${TMPDIR}/docs"
DESTINATION_PATH="${SOURCE_ROOT}/docs"

# Run docc to process and transform the documentation archive
#$(xcrun --find docc) process-archive transform-for-static-hosting $DOCC_ARCHIVE_PATH --output-path $TEMP_OUTPUT_PATH

# Copy the entire transformed documentation to the destination directory
#rsync -av --delete "${TEMP_OUTPUT_PATH}/" "${DESTINATION_PATH}/"

# Change to the directory where the Git repository is
echo "Current Directory: $(pwd)"
echo "source root = ${SOURCE_ROOT}"
echo "destination path = ${DESTINATION_PATH}"
echo  "docc archive path = ${DOCC_ARCHIVE_PATH}"
echo "BUILD_DIR: $BUILD_DIR"
echo "SRCROOT: $SRCROOT"

echo "repos = $(git remote -v)"
