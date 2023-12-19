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
The script searches all devices on the network for your MAC address. Most Android phones automatically randomize your MAC address. This obviously causes issues.

[Here are instructions on how to set your home Wi-Fi to your static MAC address](https://google.com/search?q=temp)

(*Note that this was done on Samsung. Instructions should be similar for most other Androids. If not, Google it.*)

### ⚠️ ATTENTION!! ⚠️
The script has a placeholder MAC address. You NEED to change it to your new static MAC for this to work.

### 4. Turn on USB and Wireless Debugging
Go to your phone settings.

Go to `About Phone`.

Navigate to `Build Number`. (Can usually be found under Software Information)

Tap on `Build Number` 7 times to enable Developer Options.

You can now find `Developer Options` either in the Settings main page, or under About Phone.

In Developer Options, enable `USB Debugging` and `Wireless Debugging`.

When running the command in Step 1, your phone will display a message saying `Allow USB Debugging?`. If you are using a trusted personal device, you can check `Always allow from this computer` to avoid that message.

## Support
If you run into problems, join my public [Discord]()
