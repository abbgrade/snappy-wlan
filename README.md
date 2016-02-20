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

The command *snapcraft* builds the snapp that can be deployed on your device using snappy or snappy-remote.

For more help see https://developer.ubuntu.com/en/snappy/ .