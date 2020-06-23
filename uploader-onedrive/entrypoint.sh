#!/bin/bash
set -eo pipefail
shopt -s nullglob

if [ -z "$INPUT_LOCALPATH" ] && [ -z "$INPUT_AUTH" ]; then
    echo 'Please set {{ LOCALPATH }} and {{ AUTH }} two parameter values, refer to Readme.md'
    exit 1
fi

cat << EFO > /tmp/auth.json
{
  "RefreshToken": "$INPUT_AUTH",
  "RefreshInterval": 1500,
  "ThreadNum": "2",
  "BlockSize": "10",
  "SigleFile": "100",
  "MainLand": false,
  "MSAccount": true
}
EFO

OneDriveUploader -c /tmp/auth.json -s $INPUT_LOCALPATH -r $INPUT_REMOTEPATH > /dev/null 2>&1 || cmd_result=$?
timepoint=$(date)
rm -rf /tmp/auth.json

if [ -n "$cmd_result" ]; then
    echo "$timepoint - File upload failed due to fatal reasons"
    exit 1
fi

echo "$timepoint - The file or folder has been uploaded to Onedrive"
