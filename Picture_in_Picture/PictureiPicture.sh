#!/bin/sh
gst-launch-1.0 --gst-debug-level=3 nvarguscamerasrc sensor_id=0  ! nvvidconv ! \
'video/x-raw, width=640, height=480, format=NV12, framerate=30/1, bitrate=1000000' ! videoconvert ! \
videobox ! videomixer name=mix sink_1::xpos=448 sink_1::ypos=336 ! videoconvert ! omxh264enc profile=8 control_rate=2 insert-sps-pps=1 iframeinterval=15 bitrate=1000000 ! \
'video/x-h264,stream-format=avc' ! rtph264pay ! 'application/x-rtp,payload=96' ! udpsink host=192.168.2.95 port=8554 async=false  nvarguscamerasrc sensor_id=1  ! nvvidconv ! \
'video/x-raw, width=192, height=144, format=NV12, framerate=30/1, bitrate=1000000' ! videoconvert ! mix.