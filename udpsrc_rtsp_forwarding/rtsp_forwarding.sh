#!/bin/sh
gst-launch-1.0 udpsrc address=<passthrough_device_ip_address> port=8554 ! 'application/x-rtp,payload=96' ! udpsink host=<receiver_ip_address> port=8554 async=false