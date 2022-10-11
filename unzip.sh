#!/bin/bash
ls zipfiles/*.zip|awk -F'.zip' '{printf "unzip "$0" -d ";sub(/zipfiles/,"dmd",$1);print $1 " -f"}'|sh
