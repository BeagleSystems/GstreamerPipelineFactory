#Check for existing folder 

cd
# Create a folder for sh files
FOLDER=/home/beagle/gstd-1.x
if [ -d "$FOLDER" ]; then
    sudo rm -r $FOLDER
else
    echo "No directory found"
fi

#Clone the latest version from repository
git clone https://github.com/RidgeRun/gstd-1.x.git
sleep 1

#Install Dependencies for Gstreamer Daemon
sudo apt-get update

sudo apt-get install automake libtool pkg-config libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libglib2.0-dev libjson-glib-dev gtk-doc-tools libreadline-dev libncursesw5-dev libdaemon-dev libjansson-dev libsoup2.4-dev python3-pip

sleep 1 

cd gstd-1.x/

#Build
./autogen.sh
./configure

make

make install

sleep 1

FOLDER=/home/beagle/gst-interpipe
if [ -d "$FOLDER" ]; then
    sudo rm -r $FOLDER
else
    echo "No directory found"
fi

cd

#Installing GstInterpipe
#Clone the latest version repository
git clone https://github.com/RidgeRun/gst-interpipe.git

#Install Dependencies
sudo apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gtk-doc-tools

#Build the project
cd gst-interpipe/

#Build the project
./autogen.sh --libdir /usr/lib/aarch64-linux-gnu/
make
make check
sudo make install

#Verify Plugin
gst-inspect-1.0 interpipe


