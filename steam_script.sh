#!/bin/bash

# Path = Steam game recording location
# Destination = where the clips end up
PATH="~/.steam/debian/-installations/userdata/434129136/gamerecordings/videos"
DESTINATION="~/Videos"

cd $PATH
for dir in */; do
    # echo "$dir"
    cd $dir
    cat init-stream0.m4s $(ls -vx chunk-stream0*.m4s) > stream0.mp4
    cat init-stream1.m4s $(ls -vx chunk-stream1*.m4s) > stream1.mp4
    ffmpeg -i stream0.mp4 -i stream1.mp4 -c copy $dir.mp4
    # rm stream0.mp4 stream1.mp4
    mv $dir.mp4 $DESTINATION/$dir.mp4
    cd ../
    rm $dir
done