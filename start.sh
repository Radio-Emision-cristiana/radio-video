#!/bin/bash

mkdir -p public/hls

ffmpeg -stream_loop -1 -i video.mp4 -i http://TU-RADIO-STREAM \
-c:v libx264 -preset veryfast \
-c:a aac -b:a 128k \
-f hls \
-hls_time 4 \
-hls_list_size 6 \
-hls_flags delete_segments \
public/hls/stream.m3u8