#!/bin/sh
gst-client pipeline_create pipe1 nvarguscamerasrc sensor_id=0 ! 'video/x-raw(memory:NVMM), format=NV12, width=1280, height=720, framerate=59/1' ! interpipesink name=cam1 async=true sync=false 

gst-client pipeline_create pipe2 nvarguscamerasrc sensor_id=1 ! 'video/x-raw(memory:NVMM), format=NV12, width=1280, height=720, framerate=59/1' ! interpipesink name=cam2 async=true sync=false

gst-client pipeline_create pipe3 interpipesrc name=interpipesrc1 listen-to=cam1 format=time ! queue ! nvvidconv ! 'video/x-raw,format=NV12, width=640, height=480, framerate=59/1' ! omxh264enc profile=8 control_rate=2 insert-sps-pps=1 iframeinterval=15 bitrate=1000000 ! 'video/x-h264,stream-format=avc' ! rtph264pay ! 'application/x-rtp, payload=96' !  interpipesink name=udpsrc1

gst-client pipeline_create pipe4 udpsrc address=192.168.2.52 port=8554 ! interpipesink name=udpsrc2

gst-client pipeline_create pipe5 interpipesrc name=udpsink1 listen-to=udpsrc1 ! 'application/x-rtp, payload=96' ! udpsink host=192.168.2.95 port=8554 sync=false async=false

gst-client pipeline_play pipe1
gst-client pipeline_play pipe2
gst-client pipeline_play pipe3
gst-client pipeline_play pipe4
gst-client pipeline_play pipe5

