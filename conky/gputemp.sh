#!/bin/sh

# make sure set coretemp_load="YES" in loader.conf
temp=$(nvidia-settings -query GPUCoreTemp | grep gpu | perl -ne 'print $1 if /GPUCoreTemp.*?: (\d+)./;')
echo ${temp}°C

