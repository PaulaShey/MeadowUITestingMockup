#!/bin/sh

#  ci_post_xcodebuild.sh
#  Meadow UI Testing Mockup
#
#  Created by Paulina Grużewska on 01/09/2023.
#  # Define paths
# Define paths
#!/bin/sh

# Define paths
DOCC_ARCHIVE_PATH="${BUILD_DIR}/MyApp.doccarchive"
TEMP_OUTPUT_PATH="${TMPDIR}/docs"
DESTINATION_PATH="${SOURCE_ROOT}/docs"

# Run docc to process and transform the documentation archive
$(xcrun --find docc) process-archive transform-for-static-hosting $DOCC_ARCHIVE_PATH --output-path $TEMP_OUTPUT_PATH

# Copy the entire transformed documentation to the destination directory
rsync -av --delete "${TEMP_OUTPUT_PATH}/" "${DESTINATION_PATH}/"
