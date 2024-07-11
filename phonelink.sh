#!/bin/bash

# Colors:
red=$(tput setaf 1)
cyan=$(tput setaf 6)
reset=$(tput sgr0)

# List devices on the network
arp_output=$(sudo arp-scan -l | grep 70:74:15:27:a3:7d) # PUT IN YOUR OWN MAC!!!!!

# Check if any device is found
if [ -z "$arp_output" ]; then
  echo -e "${red}Failed to find device.${reset}"
  exit 1
fi

# Extract IP address
ip_address=$(echo "$arp_output" | awk '{print $1}')

# Connect to ADB
adb_command="adb connect $ip_address:5555"
adb_output=$($adb_command)

# Check if the connection is successful
if [[ $adb_output =~ "failed to connect" ]]; then
  echo -e "${red}Failed to connect.${reset} Please plug in your phone and run: ${cyan}adb tcpip 5555${reset}."
  exit 1
fi

# Run Scrcpy
scrcpy_command="scrcpy -b2M -m800"
$scrcpy_command
