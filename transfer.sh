#!/usr/bin/env bash

DEST_DIR=/data/shared/scripts

for APP in $(ls -d */)
do
   cp ${APP}/wrap* $DEST_DIR
done 
