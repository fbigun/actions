#!/bin/bash
set -eo pipefail
shopt -s nullglob

cat << EFO > /tmp/auth.json
{
  "RefreshToken": "$1",
  "RefreshInterval": 1500,
  "ThreadNum": "2",
  "BlockSize": "10",
  "SigleFile": "100",
  "MainLand": false,
  "MSAccount": true
}
EFO

cat /tmp/auth.json

result=$(OneDriveUploader -c /tmp/auth.json -s $2)
time=$(date)
echo "::set-output name=result::$time - $result"
