#!/bin/sh

JSON_DATA=src/pug/data/data.json
JSON_VERSION=conf/version.json
JSON_NEW=`jq -s add $JSON_DATA $JSON_VERSION`

# jq --help

echo $JSON_NEW

pug -O $JSON_NEW -P src/pug/page/ --out dist
