#!/bin/bash
set +ui
set -x
cd /root/tmp/electro_git/images/
for fl in `find  -depth -mindepth 1 -maxdepth 1 -type f -size 0` 
do
 echo $fl
 rm -f $fl
done 
