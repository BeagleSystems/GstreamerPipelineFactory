# GstreamerPipelineFactory

This repository contains all the pipelines that were developed at Beagle Systems GmbH for all OS platforms. 

Currently available pipelines in the factory, 

| Slno | Foldername                 | Purpose                                                                               |
|------|----------------------------|---------------------------------------------------------------------------------------|
| 1    | Picture_in_Picture         | PiP mode for two cameras                                                              |
| 2    | gstinterpipe_toggle_camera | Switch between two cameras or two udpsrc<br>to channelize streaming.                  |
| 3    | nvarguscamerasrc_rtsp_h264 | Contains receiver and sender pipelines to <br>send CSI camera output to GCS via RTSP. |
| 4    | udpsrc_rtsp_forwarding     | To receive RTSP stream from host and <br>forward to client PC.                        |
| 5    | v4l2src_rtsp_h264          | Contains pipelines to send v4l2 based devices<br>camera output to GCS via RTSP.       |
