#!/bin/bash

# Update package list
sudo apt update

# Install wget
sudo apt install wget -y

# Download Nessus Debian package
wget -O Nessus-10.9.1.debian10_amd64.deb "https://www.tenable.com/downloads/api/v2/pages/nessus/files/Nessus-10.9.1-debian10_amd64.deb"

# Install the downloaded package
sudo dpkg -i Nessus-10.9.1.debian10_amd64.deb

# Fix any dependency issues
sudo apt-get install -f -y

# Enable and start Nessus service
sudo systemctl enable --now nessusd

echo "✅ Nessus installation complete. Access it via https://<your-ip>:8834"
