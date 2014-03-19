#!/bin/bash
set +ui
set -x
#ftp://electro:electro@ftp.ntsomz.ru/2014/January/28/1030/140128_1030_original_RGB.jpg
date
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
wget $URL
echo FILENAME:`basename $URL`