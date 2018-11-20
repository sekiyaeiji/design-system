#!/bin/sh

# JSON_DATA=`cat src/pug/data/data.json | jq .`
# JSON_VERSION=`cat conf/version.json  | jq .`

JSON_DATA=`cat src/pug/data/data.json`
JSON_VERSION=`cat conf/version.json`

echo "\n\n━━━━━━━━━"

echo `cat src/pug/data/data.json`

echo "\n\n━━━━━━━━━"

echo $JSON_DATA

echo "\n\n━━━━━━━━━"

echo $JSON_VERSION

echo "\n\n━━━━━━━━━"

JSON_NEW=`jq -s add $JSON_DATA $JSON_VERSION`
# echo $JSON_NEW

# pug -O $JSON_NEW -P src/pug/page/ --out dist
