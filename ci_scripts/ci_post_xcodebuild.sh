#!/bin/sh

#  ci_post_xcodebuild.sh
#  Meadow UI Testing Mockup
#
#  Created by Paulina Grużewska on 01/09/2023.
#  # Define paths
# Define paths
DOCC_ARCHIVE_PATH="${BUILD_DIR}/Meadow UI Testing Mockup.doccarchive"
OUTPUT_PATH="${SOURCE_ROOT}/docs"

# Run docc to process and transform the documentation archive
$(xcrun --find docc) process-archive transform-for-static-hosting $DOCC_ARCHIVE_PATH --output-path $OUTPUT_PATH

cat "${TEMP_OUTPUT_PATH}/index.html" > "${SOURCE_ROOT}/index.html"
