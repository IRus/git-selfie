#!/bin/bash

FOLDER="${HOME}/Pictures/Commits"

mkdir -p "${FOLDER}"

fswebcam --resolution "1280x720" \
         --no-banner \
        --quiet \
         --png 0 \
         "${FOLDER}/$(date +"%s").png"
