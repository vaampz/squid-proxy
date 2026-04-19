#!/bin/bash

# Update package lists
apt update

# Download the installation script (using the raw URL instead of the HTML blob)
wget https://raw.githubusercontent.com/vaampz/squid-proxy/main/squid3-install.sh

# Execute the installation script
bash squid3-install.sh

# Restart the squid service
systemctl restart squid
