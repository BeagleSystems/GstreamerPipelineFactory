# Create a folder for sh files
FOLDER=/usr/local/sbin/computer
if [ -d "$FOLDER" ]; then
    echo "$FOLDER exists"
else
    sudo mkdir $FOLDER
fi

# copy sh files
sudo cp ./gstd_load.sh /usr/local/sbin/computer/gstd_load.sh

sudo cp ./camera_switch_start.sh /usr/local/sbin/computer/camera_switch_start.sh



# +x for sh files
sudo chmod +x /usr/local/sbin/computer/gstd_load.sh
sudo chmod +x /usr/local/sbin/computer/camera_switch_start.sh


# copy service files to systemd
sudo cp ./switch_camera_start.service /etc/systemd/system/switch_camera_start.service
sudo cp ./gstd_load.service /etc/systemd/system/gstd_load.service

# reload service daemon
sudo systemctl daemon-reload


# Enable the service during startup
sudo systemctl enable switch_camera_start.service
sudo systemctl enable gstd_load.service

