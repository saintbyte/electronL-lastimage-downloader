#!/bin/bash
set +ue
set -x
# see example http://build-failed.blogspot.ru/2012/11/zoomable-image-with-leaflet.html
filename=`./get_by_bash.sh | grep "FILENAME" | awk -F ":" '{print $2}'`
gdal_translate -of JPEG -outsize 11136 11136 "${filename}" "_${filename}"
#gdal2tiles.py -p raster -z 0-4  -w all -o JPEG --copyright="ELECTRO L" --title="TITLE"  --verbose "_${filename}"
gdal2tiles.py -p raster -z 0-6 -w all  "_${filename}"
