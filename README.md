# snappy-wlan

A configuration interface for wlan devices based on Ubuntu Snappy Core.

The configuration programm is https://github.com/abbgrade/snappy-wlan-config .

## Use Cases

### UC1 : Wifi Client 

The Ubuntu Core device requires a wifi connection for some reason.
Snappy WLAN enables the user to configure the connection without shell usage on the Ubuntu Core device.

### UC2 : Wifi Hotspot

The Ubuntu Core device has a working network connection and should provide it to other wifi devices.
Snappy WLAN enables the user to configure the connection without shell usage on the Ubuntu Core device.

### UC3 : IoT-DMZ

The Ubuntu Core device acts as wifi hotspot for other (smart / untrustworthy) devices.
Snappy WLAN enables the user to observe and intervene into the network usage of the wifi clients.

## Changelog

### In Progress

### Planned

- [ ] UC1 : Wifi Client
- [ ] UC2 : Wifi Hotspot
- [ ] UC3 : IoT-DMZ

## Installation

## Ubuntu Core on Raspberry PI2

The command *snapcraft* builds the snapp that can be deployed on your device using snappy or snappy-remote.

For more help see https://developer.ubuntu.com/en/snappy/ .

## Ubuntu on Raspberry PI2

Since Ubuntu Core / Snapcraft has issues the first step is to have it working with Ubuntu Server.

### System Setup

Setup Ubuntu on the raspberry pi2 as explained in the [Ubuntu Wiki](https://wiki.ubuntu.com/ARM/RaspberryPi).
You don't need to install any desktop environment but may need to configure your keyboard layout with:

    sudo dpkg-reconfigure keyboard-configuration
    sudo locale-gen de_CH.UTF-8
    sudo dpkg-reconfigure locales 

Replace the default user *ubuntu* with:

    sudo adduser newuser
    sudo visudo

add to *root    ALL=(ALL:ALL) ALL* the line *newuser ALL=(ALL:ALL) ALL*

relog with the *newuser* and delete the user *ubuntu* with:

    sudo deluser --remove-home ubuntu

Update the system with:

    sudo apt-get update && sudo apt-get upgrade

### snappy-wlan Setup

    sudo apt-get install git golang build-essential

    git clone https://github.com/abbgrade/snappy-wlan.git
    cd snappy-wlan
    make test


