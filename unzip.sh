#!/bin/bash
ls zipfiles/*.zip|awk -F'.zip' '{printf "unzip -o "$0" -d ";sub(/zipfiles/,"dmd",$1);print $1}'|sh