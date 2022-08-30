#!/usr/bin/env bash

set -eo pipefail

OUTPUT="data/tz.json"

echo '{' > $OUTPUT

wget https://github.com/infused/ziptz/raw/master/data/tz.data -O - | \
  zlib-flate -uncompress | \
  awk -F '|' 'NR>1 { print ", " } { printf("\"%s\": \"%s\"", $1, $2) }' >> $OUTPUT

echo '}' >> $OUTPUT
