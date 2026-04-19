#!/bin/bash

echo "[*] Updating package lists..."
apt update -y

echo "[*] Downloading the latest squid installation script..."
wget -qO squid3-install.sh https://raw.githubusercontent.com/vaampz/squid-proxy/main/squid3-install.sh

echo "[*] Executing the installation script..."
bash squid3-install.sh

echo "[*] Restarting the Squid service to apply configurations..."
systemctl restart squid

echo "[+] Setup completed successfully!"
