#!/bin/bash
#Author: github.com/victorhdda licenses  and refereces are linked at the author repository.
#This code take and store a picture from webcam

#Dependencies: ffmpeg,

#Usage message:
[ $# -eq 0 ] && { echo "Usage: sh $0 [device/webcam/camera] [path to store picture] \n [device/webcam/camera]: path to device e.g:/dev/video1 \n [path to store picture]: path to store taken picture \n Example: sh $0 /dev/video1 /tmp/loginpic/"; exit 1; }


datetime=`date +%F-%H%M%S` #forated date of taken picture
device=$1
path=$2

ffmpeg -f video4linux2 -s vga -i $device -vframes 1 $path/loginpic-$datetime.jpg

exit 0
