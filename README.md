# Wireless-Phone-Connect-for-Linux
Automatically connect your Android device to Linux using Scrcpy!

## What does this do?
This will run all the commands automatically to wirelessly share your screen from Android to your Linux device!

It will search for your phone over the network, connect to the device via ADB, then begin sharing wirelessly.

This is intended to be used exclusively at home or work. Similar commands can be followed, however, for other places.

## Requirements
### 1. Make device available over Wi-Fi
Before it will work, you must plug in your phone via USB and run the following command in a Linux terminal:
```
adb tcpip 5555
```
*Note: You must do this after every time you restart your phone.*

### 2. Install required apps
You must have `scrcpy` and `arp-scan` installed. You can do this with:
```
sudo apt-get install scrcpy arp-scan -y
```

### 3. Static MAC Address
The script searches all devices on the network for your MAC address. 
