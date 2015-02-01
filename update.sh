#!/bin/bash
GSUTIL=${1:-gsutil}
"$GSUTIL" cp gs://play_public/supported_devices.csv - | iconv -f UTF-16LE -t UTF-8 | sed -e '1d' > supported_devices.csv
