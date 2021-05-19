gst-launch-1.0 udpsrc port=8554 ! application/x-rtp,payload=96 ! rtph264depay ! video/x-h264,stream-format=avc ! avdec_h264 ! videoconvert ! autovideosink
