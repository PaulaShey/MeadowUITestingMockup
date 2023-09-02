#!/bin/sh

#  ci_post_clone.sh
#  Meadow UI Testing Mockup
#
#  Created by Paulina Grużewska on 01/09/2023.
# # Define paths
DOCC_ARCHIVE_PATH="${BUILD_DIR}/Meadow UI Testing Mockup.doccarchive"
TEMP_OUTPUT_PATH="${TMPDIR}/docs"
DESTINATION_PATH="${SOURCE_ROOT}/docs"

echo "DOCC_ARCHIVE_PATH: $DOCC_ARCHIVE_PATH= "
echo "TEMP_OUTPUT_PATH: $TEMP_OUTPUT_PATH"
echo "DESTINATION_PATH: $DESTINATION_PATH"

# Run docc to process and transform the documentation archive
$(xcrun --find docc) process-archive transform-for-static-hosting $DOCC_ARCHIVE_PATH --output-path $TEMP_OUTPUT_PATH
echo "Find docc and transform it to html then save it to: $TEMP_OUTPUT_PATH"

# Copy the entire transformed documentation to the destination directory
rsync -av --delete "${TEMP_OUTPUT_PATH}/" "${DESTINATION_PATH}/"
echo "Copy the entire transformed documentation to $DESTINATION_PATH"

# Change to the directory where the Git repository is
cd "${SOURCE_ROOT}"

# Stage the changes
git add index.html

# Commit the changes
git commit -m "Update documentation."

# Push to GitHub
git push github main

echo "Script was completed"
