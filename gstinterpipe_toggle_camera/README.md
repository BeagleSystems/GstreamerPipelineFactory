#Gstreamer guide for Switching Camera Pipeline 


###Gstinterpipe installation guide

**Step1: Installing Gstreamer Daemon**

Clone the latest version repository from 

``
git clone https://github.com/RidgeRun/gstd-1.x.git
``

Install Dependencies

``
sudo apt-get install \
automake \
libtool \
pkg-config \
libgstreamer1.0-dev \
libgstreamer-plugins-base1.0-dev \
libglib2.0-dev \
libjson-glib-dev \
gtk-doc-tools \
libreadline-dev \
libncursesw5-dev \
libdaemon-dev \
libjansson-dev \
libsoup2.4-dev \
python3-pip
``

Build

``
./autogen.sh
./configure 
make
``
Installing the Binaries

``
make install 
``

Check
 
```
gstd 
``



