#!/bin/sh
gst-launch-1.0 nvarguscamerasrc ! nvvidconv ! 'video/x-raw(memory-NVMM),format=NV12,width=640,height=360,framerate=30/1' ! omxh264enc profile=8 control_rate=2 insert-sps-pps=1 iframeinterval=2 ! 'video/x-h264,stream-format=avc,bitrate=4000000' ! rtph264pay ! 'application/x-rtp,payload=96' ! udpsink host=<passthrough_device_ip_address> port=8554 async=false