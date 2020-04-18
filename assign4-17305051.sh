#!/bin/bash

#Name : Mohammad Syed
#Student Number : 17305051
#email : mohammad.syed@ucdconnect.ie
cp -R $1 $2
cd $2
ls -1 *.png | xargs -n 1 bash -c 'convert "$0" "${0%.*}.jpg"'
find . -type f -not -name '*.jpg' -print0 | xargs -0 rm --
exit 0