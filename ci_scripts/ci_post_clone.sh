#!/bin/sh

#  ci_post_clone.sh
#  Meadow UI Testing Mockup
#
#  Created by Paulina Grużewska on 01/09/2023.
# # Define paths
DOCC_ARCHIVE_PATH="${BUILD_DIR}../Meadow UI Testing Mockup.doccarchive"
DESTINATION_PATH="./docs"
DESTINATION_PATH="./docs"


xcodebuild docbuild


# Run docc to process and transform the documentation archive
#$(xcrun --find docc) process-archive transform-for-static-hosting $DOCC_ARCHIVE_PATH --output-path $TEMP_OUTPUT_PATH

# Copy the entire transformed documentation to the destination directory
#rsync -av --delete "${TEMP_OUTPUT_PATH}/" "${DESTINATION_PATH}/"

# Change to the directory where the Git repository is
 cd ..
 
 git add .
 
 git commit -m "message"
 
 git push origin main
