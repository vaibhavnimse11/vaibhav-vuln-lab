#!/bin/bash

echo "📥 Downloading DVWA Installer..."
wget https://raw.githubusercontent.com/IamCarron/DVWA-Script/main/Install-DVWA.sh -O Install-DVWA.sh

echo "🔓 Making installer executable..."
chmod +x Install-DVWA.sh

echo "🚀 Running DVWA Installer..."
sudo ./Install-DVWA.sh
