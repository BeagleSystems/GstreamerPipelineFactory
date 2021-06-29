
#Disable currrent services
sudo systemctl disable switch_camera_start.service
sudo systemctl disable gstd_load.service

#Stop Respective services
sudo systemctl stop switch_camera_start.service
sudo systemctl stop gstd_load.service

#remove service files
sudo rm /etc/systemd/system/switch_camera_start.service
sudo rm /etc/systemd/system/gstd_load.service

#remove script
sudo rm /usr/local/sbin/computer/gstd_load.sh
sudo rm /usr/local/sbin/computer/camera_switch_start.sh