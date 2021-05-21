#!/bin/sh
gst-launch-1.0.exe  udpsrc address=<receiver_ip_address> port=8554 ! "application/x-rtp,payload=96" ! rtph264depay ! "video/x-h264,stream-format=avc" ! avdec_h264 ! autovideosink