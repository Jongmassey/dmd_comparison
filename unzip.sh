#!/bin/bash
ls zipfiles/*.zip|awk -F'.zip' '{print "unzip -f "$0" -d \\";sub(/zipfiles/,"dmd",$1);print $1}'|sh