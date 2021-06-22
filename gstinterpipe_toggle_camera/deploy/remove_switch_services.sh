# disalbe and stop current service
sudo systemctl disable gstnvarguscamera.service
sudo systemctl stop gstnvarguscamera.service

# remove service files
sudo rm /etc/systemd/system/gstnvarguscamera.service
sudo rm /usr/local/sbin/computer/start_gst.sh

