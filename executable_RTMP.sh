#!/bin/bash
if [ $3 ]
then
ffmpeg -re -i "$1" -c:v libx264 -c:a aac -b:a 192k -ar 44100 -f flv -vf "$3" rtmp://localhost/live/$2
echo Playing "$1" at rtmp://$(curl ifconfig.me)/live/$2 / options: $3
exit
fi
ffmpeg -re -i "$1" -c:v libx264 -c:a aac -b:a 192k -ar 44100 -f flv rtmp://localhost/live/$2
echo Playing "$1" at rtmp://$(curl ifconfig.me)/live/$2
