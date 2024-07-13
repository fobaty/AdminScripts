#!/bin/bash

# Check for root privileges
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root"
    exit 1
fi

# Update package lists and upgrade packages
apt-get update -y
apt-get upgrade -y

# Check if a reboot is required and reboot if necessary
if [ -f /var/run/reboot-required ]; then
    echo "Rebooting the system..."
    reboot
fi
