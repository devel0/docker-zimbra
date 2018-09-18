#!/bin/bash

source /scripts/constants
source /scripts/utils.sh

exdir=$(executing_dir)

cd "$exdir"

docker build --network=build -t searchathing/zimbra "$exdir"
