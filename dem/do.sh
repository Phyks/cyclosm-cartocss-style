#!/bin/sh

wget http://viewfinderpanoramas.org/dem3/M30.zip
wget http://viewfinderpanoramas.org/dem3/M31.zip
wget http://viewfinderpanoramas.org/dem3/M32.zip
wget http://viewfinderpanoramas.org/dem3/L30.zip
wget http://viewfinderpanoramas.org/dem3/L31.zip
wget http://viewfinderpanoramas.org/dem3/L32.zip
wget http://viewfinderpanoramas.org/dem3/K30.zip
wget http://viewfinderpanoramas.org/dem3/K31.zip
wget http://viewfinderpanoramas.org/dem3/K32.zip

for zipfile in *.zip; do unzip $zipfile; done
for hgtfile in */*.hgt; do gdal_fillnodata.py $hgtfile $hgtfile.tif && rm $hgtfile; done
gdal_merge.py -n 32767 -co BIGTIFF=YES -co TILED=YES -co COMPRESS=LZW -co PREDICTOR=2 -o raw.tif */*.hgt.tif
gdalwarp -s_srs EPSG:4269 -t_srs EPSG:3857 -r bilinear raw.tif proj.tif

gdaldem hillshade -co compress=lzw -compute_edges proj.tif hillshade.tif
gdaldem color-relief hillshade.tif -alpha shade.ramp hillshade-out.tif

gdalbuildvrt hillshade.vrt hillshade-out.tif
