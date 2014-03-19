#!/bin/bash
set +ui
set -x
filename=`./get.py | grep "FILENAME" | awk -F ":" '{print $2}'`
echo ${filename}