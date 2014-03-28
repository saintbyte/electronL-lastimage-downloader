#!/bin/bash
set +ui
set -x
cd /root/tmp/electro_git/
#ftp://electro:electro@ftp.ntsomz.ru/2014/January/28/1030/140128_1030_original_RGB.jpg
date
mkdir ./images/
HOUR=`date +%H`
MIN=`date +%M`
DATE_PREFIX=`date +%Y/%B/%d`
DATE_PREFIX2=`date +%y%m%d`
echo $HOUR
if [ $MIN -ge 30 ];
 then
 MIN=30
else
 MIN='00'
fi
echo $MIN
URL="ftp://electro:electro@ftp.ntsomz.ru/${DATE_PREFIX}/${HOUR}${MIN}/${DATE_PREFIX2}_${HOUR}${MIN}_original_RGB.jpg"
LOCAL_FILENAME=`basename $URL` 
wget --tries=10 -O ./images/${LOCAL_FILENAME} $URL
echo FILENAME:${LOCAL_FILENAME}