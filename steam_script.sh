#!/bin/bash




cat init-stream0.m4s $(ls -vx chunk-stream0*.m4s) > stream0.mp4
cat init-stream1.m4s $(ls -vx chunk-stream1*.m4s) > stream1.mp4
ffmpeg -i stream0.mp4 -i stream1.mp4 -c copy final.mp4
rm stream0.mp4 stream1.mp4

mv final.mp4 ~/Desktop/Videos/