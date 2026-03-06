#!/bin/bash

echo "INICIANDO FFMPEG..."

mkdir -p public/hls

ffmpeg -re -stream_loop -1 -i video.mp4 \
-i https://stream.zeno.fm/yg7bvksbfwzuv \
-map 0:v:0 -map 1:a:0 \
-c:v libx264 -preset veryfast -pix_fmt yuv420p \
-c:a aac -b:a 128k \
-shortest \
-f hls \
-hls_time 4 \
-hls_list_size 6 \
-hls_flags delete_segments \
public/hls/stream.m3u8
