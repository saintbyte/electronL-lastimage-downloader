#!/bin/bash
set +ui
set -x
cd /root/tmp/electro_git/images/
#find /root/tmp/electro_git/images/ -atime +1
for fl in `find  -depth -mindepth 1 -maxdepth 1 -type f -cmin +1460` 
do
 echo $fl
 rm -f $fl
done 
#N -exec rm -f {} \;
