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


 cd ..
 
 git add .
 
 git commit -m "message"
 
 git push origin main
