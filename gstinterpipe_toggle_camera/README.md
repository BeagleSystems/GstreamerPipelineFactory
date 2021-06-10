# Gstreamer guide for Switching Cameras 


## Installation guide

### 1. Installing Gstreamer Daemon

**Step 1: Clone the latest version repository** 

```
git clone https://github.com/RidgeRun/gstd-1.x.git
```

**Step 2: Install Dependencies**

```
sudo apt-get install automake libtool pkg-config libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libglib2.0-dev libjson-glib-dev gtk-doc-tools libreadline-dev libncursesw5-dev libdaemon-dev libjansson-dev libsoup2.4-dev python3-pip
```

**Step 3: Build**

 ```
 ./autogen.sh
 ./configure 
 make
 ```

**Step 4: Install the Binaries**

 ```
 make install 
 ```

**Step 5: Check**
 
 ```
 gstd 
 ```
 
### 2. Installing GstInterpipe
 
**Step 1: Clone the latest version repository**

```
git clone https://github.com/RidgeRun/gst-interpipe.git
```

**Step 2: Install Dependencies**
```
sudo apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gtk-doc-tools
```

**Step 3: Build the project**

 ```
 ./autogen.sh --libdir /usr/lib/aarch64-linux-gnu/
 make
 make check
 sudo make install
 ```

**Step 4: Verify plug-in Installed** 

 ```
 gst-inspect-1.0 interpipe
 
 Plugin Details:
   Name                     interpipe
   Description              Elements to communicate buffers across pipelines
   Filename                 /usr/lib/x86_64-linux-gnu/gstreamer-1.0/gstreamer-1.0/libgstinterpipe.so
   Version                  1.0.2
   License                  Proprietary
   Source module            gst-interpipe
   Binary package           GstInterpipe
   Origin URL               http://www.ridgerun.com

   interpipesrc: Inter pipeline source
   interpipesink: Internal pipeline sink

```

