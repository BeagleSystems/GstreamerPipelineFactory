gst-launch-1.0 v4l2src device=/dev/video0 ! 'video/x-raw,width=1920,height=1080,format=(string)UYVY' ! nvvidconv ! "video/x-raw(memory:NVMM),width=640,height=480,format=(string)I420" ! omxh264enc profile=8 control_rate=2 insert-sps-pps=1 iframeinterval=15 ! 'video/x-h264,stream-format=avc,bitrate=1000000' ! rtph264pay ! 'application/x-rtp,payload=96' ! udpsink host=<ip address> port=8554 async=false