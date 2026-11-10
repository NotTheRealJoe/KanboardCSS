#!/bin/bash
if ! command -v yui-compressor > /dev/null; then
  echo 'yui-compressor not found. Make sure it is installed in a location in PATH.'
  echo 'try apt install yui-compressor'
  exit 1
fi

mkdir -p 'out'

# Using the pipe with cat is necessary because yui-compressor won't accept multiple input files directly
cat ./*.css | yui-compressor --type=css -o out/full.css